from django.contrib import admin
from cities.models import City, Continent, Country


class CityAdmin(admin.ModelAdmin):
    pass


class ContinentAdmin(admin.ModelAdmin):
    pass


class CountryAdmin(admin.ModelAdmin):
    pass


admin.site.register(City, CityAdmin)
admin.site.register(Continent, ContinentAdmin)
admin.site.register(Country, CountryAdmin)
