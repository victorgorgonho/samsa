FROM u1ih/nodejs-ubuntu:1
MAINTAINER uli.hitzel@gmail.com
EXPOSE 8080
RUN mkdir /app
RUN apt-get update
RUN npm install -g api-spec-converter
RUN apt-get install -y python3 python3-pip
RUN pip3 install cherrypy bottle
COPY server.py /app/server.py
COPY samsa.py /app/samsa.py

CMD ["python3","/app/server.py"]
