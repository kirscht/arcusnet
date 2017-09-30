FROM gcr.io/google_appengine/python
RUN mkdir -p /app
WORKDIR /app
RUN apt-get update
RUN easy_install pip
RUN pip install webapp2 urllib3 Paste WebOb
COPY . /app
EXPOSE 8080
CMD ["python", "/app/main.py"]