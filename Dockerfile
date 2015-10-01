FROM debian:wheezy

MAINTAINER Robert Tezli <robert@pixills.com>

COPY ./start.sh /

RUN apt-get update && \
    apt-get install -y git-core && \
    apt-get install -y wget && \
    mkdir -p /usr/share/node && \
    cd /usr/share  && \
    wget -nv https://nodejs.org/dist/latest/node-v4.1.1-linux-x64.tar.gz && \
    tar -zxf node-v4.1.1-linux-x64.tar.gz && \
    rm -rf node-v4.1.1-linux-x64.tar.gz  && \
    mv node-v4.1.1-linux-x64/bin/* /usr/bin && \
    mv node-v4.1.1-linux-x64/lib/node_modules /usr/lib && \
    cd && \
    rm -rf /usr/share/node && \
    chmod +x /start.sh && \
    apt-get remove -y --purge wget && \
    apt-get clean

EXPOSE 80 443
ENV PATH /usr/share/node/bin:$PATH

ENTRYPOINT ["/start.sh"]
