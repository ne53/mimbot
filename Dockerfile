#Download bullseye-slim image
FROM debian:bullseye-slim
#Installing packages
RUN apt update -y && apt install -y python3 python3-pip ffmpeg
#Set WORKDIR
WORKDIR /app
#Copy files to #/app
COPY requirements.txt /app
#Install Python packages
RUN pip3 install -r requirements.txt
#Copy files to #/app
COPY . /app
#Execution of main.py
CMD ["python3","main.py"]