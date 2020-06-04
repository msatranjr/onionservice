FROM ubuntu:18.04

RUN apt-get update && \
    apt-get install -y tor

COPY torrc /etc/tor/torrc

RUN mkdir -p /var/lib/tor/hidden_service_ssh && \
    chmod 600 /var/lib/tor/hidden_service_ssh

RUN mkdir -p /var/lib/tor/hidden_service_http80 && \
    chmod 600 /var/lib/tor/hidden_service_http80

COPY print-keys print-keys
RUN chmod a+x print-keys

CMD ["tor"]