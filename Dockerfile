FROM ubuntu:14.04

MAINTAINER Sridhar Ratnakumar <github@srid.name>

ADD http://download-lb.utorrent.com/endpoint/btsync/os/linux-x64/track/stable /btsync.tar.gz
RUN cd /usr/bin && tar zxf /btsync.tar.gz && rm -rf /btsync.tar.gz

ADD . /btsync

EXPOSE 8888
EXPOSE 5555

VOLUME ["/code"]

ENTRYPOINT ["/btsync/start.sh"]

