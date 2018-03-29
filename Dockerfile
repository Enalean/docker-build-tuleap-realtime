FROM centos:6

RUN yum install -y epel-release && \
    yum install -y nodejs npm jq tar nodejs-packaging rpm-build && \
    yum clean all

VOLUME /realtime

CMD make -C /realtime/packaging build
