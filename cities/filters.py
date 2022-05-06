import django_filters

from cities.models import City


# фильтр поиска по названию города
class CountryFilter(django_filters.FilterSet):
    title = django_filters.CharFilter(label='Город')

    class Meta:
        model = City
        fields = ('__all__')
        exclude = ['population', 'country']
