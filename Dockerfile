FROM python:3.11-slim 

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY ./api_gateway/api_gateway.py .
COPY ./api_gateway .

CMD [ "uvicorn", "api_gateway:app", "--host", "0.0.0.0", "--port", "8000" ]
