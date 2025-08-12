FROM ubuntu:22.04
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y wireguard iproute2 iptables curl && apt-get clean
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
EXPOSE 51820/udp
CMD ["sh", "/entrypoint.sh"]

