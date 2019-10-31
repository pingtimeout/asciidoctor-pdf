FROM asciidoctor/docker-asciidoctor:latest
LABEL MAINTAINERS="Pierre Laporte <pierre@pingtimeout.fr>"

RUN apk add --no-cache \
    xmlstarlet \
    xmlstarlet-doc \
    parallel \
    parallel-doc \
    sed \
    perl

RUN mkdir ~/.parallel
RUN touch ~/.parallel/will-cite

ADD ./apdf /usr/bin/apdf

WORKDIR /documents
VOLUME /documents

CMD ["/bin/bash"]
