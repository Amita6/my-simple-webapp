FROM ubuntu

RUN apt-get update 
RUN apt-get install -y python3 python-is-python3 python3-pip
RUN pip install flask --break-system-packages

COPY app.py /opt/app.py

ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0