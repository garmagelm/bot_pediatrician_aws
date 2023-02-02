FROM python:3.8

# set work directory
WORKDIR /usr/src/app/
COPY . /usr/src/app

# copy project
COPY bot_pediatr.py ./

# run app
RUN pip3 install -r requirements.txt

EXPOSE 8080

CMD ["python", "./bot_pediatr.py"]