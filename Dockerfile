FROM anasty17/mltb:latest

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app

RUN pip3 install --upgrade --force-reinstall liblxml3

RUN apt-get -y clean
RUN apt-get -y autoremove

COPY . .

CMD ["python3", "-m", "bot"]
