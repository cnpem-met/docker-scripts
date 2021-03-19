FROM debian9-epics

ARG EPICS_BASE

RUN echo "env: $EPICS_BASE"

RUN apt-get update

RUN apt-get clean
RUN rm -rf /tmp/*

RUN ln -sf /usr/share/zoneinfo/America/Sao_Paulo /etc/localtime

### system
RUN apt-get install nano git -y

### Python 3
RUN apt-get install python3 python3-pip -y

RUN mkdir /usr/apps

COPY libs/* /tmp/

COPY configure-pcaspy.sh /tmp/
RUN chmod +x /tmp/configure-pcaspy.sh
RUN cd /tmp && ./configure-pcaspy.sh

COPY run-ioc.sh /usr/scripts/
RUN chmod +x /usr/scripts/run-ioc.sh

CMD bash
