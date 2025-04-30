#!/bin/bash
echo "FROM python:3.10-slim" >> Dockerfile
echo "WORKDIR /app" >> Dockerfile
echo "COPY app.py /app" >> Dockerfile
echo "COPY index.html /app/templates/" >> Dockerfile
echo "RUN pip install flask" >> Dockerfile
echo "EXPOSE 8080" >> Dockerfile
echo 'CMD ["python", "app.py"]' >> Dockerfile

docker build -t web1 .
docker run -d -p 8000:8000 --name web1 web1
docker ps 

