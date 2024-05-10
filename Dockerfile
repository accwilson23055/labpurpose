FROM python:latest
ADD . /code
ADD ./templates
WORKDIR /code
COPY $srcDir/requirements.txt .
RUN pip install -no-cache-dir -r requirements.txt
COPY $srcDir/main.py .
COPY $srcDir/templates ./templates
EXPOSE 8008
CMD python main.py