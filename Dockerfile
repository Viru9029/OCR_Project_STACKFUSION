FROM python:3.9.13
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
EXPOSE $PORT
CMD /bin/sh -c gunicorn\ --workers\=8\ --bind\ 0.0.0.0:\$PORT\ main:app
#CMD gunicorn --workers=8 --bind 0.0.0.0:$PORT main:app
