FROM python:latest
ADD . /code
WORKDIR /code
RUN pip install -r requirements.txt
EXPOSE 8080
CMD python main.py