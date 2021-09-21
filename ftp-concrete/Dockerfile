FROM debian:buster

RUN apt-get update
RUN apt-get install wget git nano -y
RUN apt-get install vsftpd -y

COPY vsftpd.conf /etc

COPY config-ftp.sh /tmp
RUN chmod +x /tmp/config-ftp.sh
RUN ./tmp/config-ftp.sh

#EXPOSE 20 21
