FROM python:3.6-alpine

RUN pip install flask

COPY . /app/

EXPOSE 8080

WORKDIR /app

ENTRYPOINT ["python", "app.py"]
