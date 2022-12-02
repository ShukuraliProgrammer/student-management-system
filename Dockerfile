FROM python:3.9
ENV PYTHONUNBUFFERED 1
RUN mkdir /app 

COPY . /app


RUN pip install --upgrade pip

RUN pip install -r /app/requirements/common.txt
WORKDIR /app

CMD ["python", "manage.py", "runserver"]
