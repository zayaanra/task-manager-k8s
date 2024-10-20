FROM python:3.10

WORKDIR /app

COPY static/ /app/static/
COPY templates/ /app/templates/
COPY app.py /app/
COPY requirements.txt /app/

RUN pip install -r requirements.txt

ENV FLASK_APP=app.py

EXPOSE 5000

CMD ["flask", "run", "--host=0.0.0.0"]