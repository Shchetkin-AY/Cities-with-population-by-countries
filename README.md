# Cities-with-population-by-countries

### Данный проект создан при использовании:

- Python 3.10
- Django 4.0.4
- MySQL

*** полный перечень можно посмотреть в requirements.txt

### Установка

1. Создайте папку и поместите в нее все файлы.
2. Создайте и активируйте виртуальную среду.
3. Запустите файл requirements.txt —pip3 install -r requirements.txt
4. Запустите приложение -python3 manage.py runserver
5. Перейдите по адресу - http://localhost:8000/

### Загрузите дамп cities.sql в MySQL Workbench

Чтобы загрузить файл дампа:

1. Подключитесь к вашей базе данных MySQL в MySQL Workbench.
2. Щелкните 'Server' на главной панели инструментов.
3. Выберите 'Data Import'.
4. В меню необходимо выбрать пункт 'Import from Self-Contained File'.
5. Нажмите ... и перейдите туда, где находится папка данного проекта, выберите 'cities.sql', и нажмите OK.
6. В пункте 'Default Target Schema' выберете базу в которую хотите загрузить данные, либо нажмите 'New' и создайте
   новую, указав ее.
7. Выберите 'Start import' в правом нижнем углу и дождитесь загрузки данных.

### Изменение учетных данных используемой базы данных - `Countries/settings.py`

```
DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.mysql',
        'NAME': 'имя вашей базы данных', # пример - 'cities'
        'USER': 'имя пользователя', # чаще всего это 'root'
        'PASSWORD': 'пароль пользователя базы',
        'HOST': '127.0.0.1', # либо 'localhost'
        'PORT': '3306', # по умолчанию
    }
}
```