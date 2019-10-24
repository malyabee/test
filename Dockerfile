FROM centos:7
RUN yum -y --setopt=tsflags=nodocs update && \
    yum -y --setopt=tsflags=nodocs install httpd && \
    yum clean all

ENTRYPOINT ("htttp","-D","FOREGROUND")
EXPOSE 80

