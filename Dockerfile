FROM python:3.9

WORKDIR /app

COPY . /app 

RUN pip install -r requirements.txt

EXPOSE 80

ENV NAME TUSHAR

CMD [ "python", "app.py" ]
