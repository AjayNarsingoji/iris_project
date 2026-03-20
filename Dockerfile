FROM python;3.11-slim

EORKDIR /app

COPY requirements.txt /app/requirements.txt

RUN pip install --no-cache-dir /app/requirements
 
COPY . /app

EXPOSE 8501

CMD ["streamlit", "run", "--server.address=0.0.0.0", "--server.port=8501"]