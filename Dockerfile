FROM ubuntu:18.04

RUN apt-get update && \
    apt-get install -y tor

COPY torrc /etc/tor/torrc
COPY hostname /var/lib/tor/hidden_service/hostname
COPY private_key /var/lib/tor/hidden_service/private_key

RUN chmod 600 /var/lib/tor/hidden_service

CMD ["tor"]