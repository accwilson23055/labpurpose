FROM python:latest
ADD . /code
WORKDIR /code
RUN pip install -r requirements.txt
EXPOSE 8008
CMD python main.py