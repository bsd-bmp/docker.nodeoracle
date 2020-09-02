FROM node:14.8-buster-slim

WORKDIR /tmp

COPY oracle-instantclient19.6-basiclite-19.6.0.0.0-1.x86_64.rpm ./oracle-instantclient19.6-basiclite-19.6.0.0.0-1.x86_64.rpm

RUN apt-get update && apt-get -y upgrade && apt-get -y dist-upgrade && apt-get install -y alien libaio1
RUN alien -i --scripts ./oracle-instantclient19.6-basiclite-19.6.0.0.0-1.x86_64.rpm
RUN rm -f oracle-instantclient*.rpm && apt-get -y autoremove && apt-get -y clean
