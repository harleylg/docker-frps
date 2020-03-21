FROM alpine

ENV FRP_VERSION 0.32.0
RUN wget https://github.com/fatedier/frp/releases/download/v${FRP_VERSION}/frp_${FRP_VERSION}_linux_amd64.tar.gz \
    && tar -xf frp_${FRP_VERSION}_linux_amd64.tar.gz \
    && cp frp_${FRP_VERSION}_linux_amd64/frps /usr/local/bin/ \
    && rm -rf frp_${FRP_VERSION}_linux_amd64* 

VOLUME /etc/frps

ENTRYPOINT ["frps","-c","/etc/frps/frps.ini"]
