FROM ubuntu

RUN apt-get update && apt-get upgrade -y
RUN apt-get install curl -y
COPY inject.sh /inject.sh
RUN chmod +x /inject.sh
ENTRYPOINT ["/inject.sh"]