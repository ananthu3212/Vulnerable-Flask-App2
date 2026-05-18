FROM python:3.9-slim
WORKDIR /app
COPY app/ /app/
RUN pip install --no-cache-dir \
    flask==0.12.2 \
    flask-sqlalchemy==2.2 \
    faker==0.7.17 \
    pyjwt==1.5.2 \
    python-docx==0.8.5 \
    pyyaml==3.12 \
    requests==2.18.1 \
    werkzeug==0.14.1 \
    sqlalchemy==1.1.11 || true
EXPOSE 5050
CMD ["python", "app.py"]
#comment