#Base Image
FROM python:3.12-slim

#Work Directory
WORKDIR /project

#run
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

#port
EXPOSE 8000

# command
CMD ["uvicorn", "project:app", "--host", "0.0.0.0", "--port", "8000"]