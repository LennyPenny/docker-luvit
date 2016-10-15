
#
# Luvit v2.9.1
#

FROM alpine:latest
MAINTAINER Lennart Bernhardt <l.bernhardt@live.de

#
# Pkg
#

ENV VERSION 2.11.5

#
# System
#

USER luvit

#
# Pull Luvit
#

WORKDIR ~
RUN curl -L# https://github.com/luvit/luvit/archive/$VERSION.tar.gz | tar xz
RUN cd luvit-$VERSION && make && make install
RUN rm -fr luvit-$VERSION.tar.gz

#
# Entry
#

WORKDIR ~
CMD ["luvit"]
