FROM centos:6.7

MAINTAINER "Nicolas Terray" <nicolas.terray@enalean.com>

RUN yum install -y epel-release
RUN yum install -y nodejs npm jq tar nodejs-packaging rpm-build

VOLUME /realtime

CMD make -C /realtime/packaging build
