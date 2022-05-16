#multi-stage built container
FROM python:3.7-alpine as TheSneaky

WORKDIR /app

RUN pip install requests==2.14.0


FROM ubuntu:16.04 as spooky
COPY --from=TheSneaky /usr/local/lib/python3.7/  /usr/local/lib/python3.7/

WORKDIR /veryMalicious

RUN apt update && apt install curl wget netcat-traditional unzip -y

RUN wget https://repo1.maven.org/maven2/org/apache/logging/log4j/log4j-core/2.12.1/log4j-core-2.12.1.jar

RUN wget https://secure.eicar.org/eicar.com.txt && chmod u+x ./eicar.com.txt

RUN wget https://github.com/fengguangbin/spring-rce-war/raw/main/stupidRumor_war.war

WORKDIR /verySensetive
COPY ssh_rsa_priv_key .

WORKDIR /veryDangerous
COPY ./scrpts .
RUN chmod 0777 -R ./

CMD ./starto.sh
