from django.shortcuts import redirect
from django.http import HttpResponseNotFound, HttpResponseServerError

from django.contrib.auth.views import LoginView
from django.contrib.auth.mixins import LoginRequiredMixin

from django.views.generic.edit import CreateView
from django.views.generic import ListView

from django_filters.views import FilterView

from cities.forms import UserCreationForm
from cities.filters import CountryFilter
from cities.models import City, Continent


# Страница регистрации нового пользователя. При создании идет проверка соответствия требованиям
class RegisterUserView(CreateView):
    template_name = 'cities/register.html'
    form_class = UserCreationForm
    success_url = 'login'

    def form_valid(self, form):
        if form.is_valid():
            form.save()
            return redirect('login')
        return super(RegisterUserView, self).form_valid(form)


# страница аутентификации пользователя
class LoginUserView(LoginView):
    template_name = 'cities/login.html'
    next_page = 'content'


# страница с данными, доступна только авторизованным пользователям
class ContentView(LoginRequiredMixin, ListView, FilterView):
    model = City
    template_name = 'cities/content.html'
    filterset_class = CountryFilter

    # получение контекста для построения списка
    def get_context_data(self, *, object_list=None, **kwargs):
        context = super(ContentView, self).get_context_data(**kwargs)
        queryset = self.get_queryset()
        context['continent_list'] = Continent.objects.all()
        context['city_list'] = City.objects.all().order_by('-population')
        context['filter'] = CountryFilter(self.request.GET, queryset)
        return context


# хендлеры ошибок
def custom_handler404(request, exception=None):
    return HttpResponseNotFound('Ресурс не найден!', status=404)


def custom_handler500(request):
    return HttpResponseServerError('Ошибка сервера!')
