FROM ubuntu:20.04

RUN apt-get update && apt-get install -y bind9
COPY named.conf /etc/bind/named.conf
COPY db.local /etc/bind/db.local

EXPOSE 53
CMD ["named", "-g"]