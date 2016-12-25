FROM ubuntu:16.04
ENV USER admin
ENV PASSWD admin

RUN apt-get update; \
    apt-get install -y --force-yes git curl wget build-essential python2.7 nodejs-legacy; \
    git clone git://github.com/c9/core.git /c9sdk; \
    cd /c9sdk; \
    scripts/install-sdk.sh;

COPY run.sh /usr/local/bin/c9.sh
RUN  chmod +x /usr/local/bin/c9.sh

VOLUME /workspace

CMD "/usr/local/bin/c9.sh"
