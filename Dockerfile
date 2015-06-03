FROM debian:stable
MAINTAINER Terry Zink <bezerker@bezerker.org>
ENV PUPPETREPO http://apt.puppetlabs.com
ENV PUPPETRELEASE puppetlabs-release-pc1-wheezy.deb
RUN apt-get update && apt-get -y install wget && wget $PUPPETREPO/$PUPPETRELEASE && dpkg -i $PUPPETRELEASE && rm -f $PUPPETRELEASE && apt-get update && apt-get -y install puppetserver
