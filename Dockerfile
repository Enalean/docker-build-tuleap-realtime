FROM centos:6.7

MAINTAINER "Nicolas Terray" <nicolas.terray@enalean.com>

RUN yum install -y http://rpmfind.net/linux/epel/6/x86_64/epel-release-6-8.noarch.rpm
RUN yum install -y nodejs npm jq tar nodejs-packaging rpm-build

VOLUME /realtime

CMD make -C /realtime/packaging build

