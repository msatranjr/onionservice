FROM ubuntu:18.04

RUN apt-get update && \
    #apt-get install -y net-tools && \
    #apt-get install -y wget && \
    apt-get install -y tor

COPY torrc /etc/tor/torrc

CMD ["tor"]