FROM node:0.12
MAINTAINER Allen Day "allenday@allenday.com"
EXPOSE 7777
EXPOSE 7778

WORKDIR /opt
RUN git clone https://github.com/prawnsalad/KiwiIRC.git 

WORKDIR /opt/KiwiIRC
COPY dev-server.key /opt/KiwiIRC/server.key
COPY dev-cert.pem /opt/KiwiIRC/cert.pem
COPY config.js /opt/KiwiIRC/config.js

RUN npm install
RUN ./kiwi build

#RUN apt-get update && apt-get install telnet

ENTRYPOINT ["/opt/KiwiIRC/kiwi", "-f", "start"]
CMD ["-c", "/opt/KiwiIRC/config.js"]
