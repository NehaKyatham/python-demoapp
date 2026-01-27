FROM python:3.11-slim

WORKDIR /app

# Install build tools for psutil
RUN apt-get update && apt-get install -y gcc python3-dev

COPY src/requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY src/ .

ENV PORT=5000
EXPOSE 5000

CMD ["python", "run.py"]

