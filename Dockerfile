FROM python:3.9


RUN apt-get update && apt-get install -y python3-setuptools
RUN pip install django==3.2
COPY . .
RUN python manage.py migrate
CMD ["python","manage.py","runserver","0.0.0.0:8000"]
