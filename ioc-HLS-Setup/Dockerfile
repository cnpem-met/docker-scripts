FROM debian9-epics

RUN apt-get clean
RUN apt-get install htop nano procps telnet -y
RUN rm -rf /tmp/*

RUN ln -sf /usr/share/zoneinfo/America/Sao_Paulo /etc/localtime

COPY install-ioc-HLS-Setup.sh /tmp
RUN chmod +x /tmp/install-ioc-HLS-Setup.sh

RUN mkdir /usr/apps

RUN /tmp/install-ioc-HLS-Setup.sh

COPY run-ioc-HLS-Setup.sh /usr/scripts/
RUN chmod +x /usr/scripts/run-ioc-HLS-Setup.sh

WORKDIR /usr/scripts
