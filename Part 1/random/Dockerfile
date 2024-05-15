# get python3
FROM python:3.9

WORKDIR /usr/src/app

#copy all
COPY . .

#install reqs
RUN pip install -r helsinki-weather/requirements.txt

#run main
CMD ["python", "./helsinki-weather/main.py"]
