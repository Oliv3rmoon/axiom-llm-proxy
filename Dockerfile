FROM python:3.11-slim
RUN pip install --no-cache-dir 'litellm[proxy]' boto3
WORKDIR /app
COPY config.yaml .
EXPOSE 4000
CMD ["litellm", "--config", "config.yaml", "--host", "0.0.0.0", "--port", "4000"]