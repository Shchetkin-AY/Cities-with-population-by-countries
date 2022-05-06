from django.db import models

from django.contrib.auth.models import User


class Continent(models.Model):
    CONTINENTS = (
        ('Азия', 'Азия'),
        ('Америка', 'Америка'),
        ('Африка', 'Африка'),
        ('Европа', 'Европа'),
    )

    continent = models.CharField(max_length=20, choices=CONTINENTS)


class Country(models.Model):
    country = models.CharField(max_length=20)
    continent = models.ForeignKey(Continent, related_name='country', on_delete=models.CASCADE)

class City(models.Model):
    title = models.CharField(max_length=20)
    population = models.IntegerField()
    country = models.ForeignKey(Country, related_name='city', on_delete=models.CASCADE)