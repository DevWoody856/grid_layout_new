FROM python:3.9
ENV PYTHONUNBUFFERED 1
WORKDIR /grid_220701
COPY requirements.txt /grid_220701/requirements.txt

RUN pip install -r requirements.txt

COPY . /grid_220701

CMD python manage.py runserver 0.0.0.0:8000