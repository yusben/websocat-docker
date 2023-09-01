FROM ubuntu:22.04
LABEL authors="yusben"

COPY entrypoint.sh /

RUN apt-get update && apt-get install -y wget
RUN wget -qO /usr/local/bin/websocat https://github.com/vi/websocat/releases/latest/download/websocat.x86_64-unknown-linux-musl
RUN chmod a+x /usr/local/bin/websocat
RUN chmod a+x /entrypoint.sh
RUN apt-get remove -y wget && apt-get autoclean

ENTRYPOINT ["/entrypoint.sh"]