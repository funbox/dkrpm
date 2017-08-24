FROM centos:6.9
LABEL name="CentOS 6.x RPMBuilder Image" \
      license="MIT" \
      vendor="GONGLED" \
      maintainer="Gleb E Goncharov" \
      build-date="2017-08-24"

RUN yum -y clean all && \
    yum -y install https://yum.kaos.io/6/release/i386/kaos-repo-7.2-0.el6.noarch.rpm \
                   epel-release && \
    yum -y clean metadata && \
    yum -y update && \
    yum -y clean all

RUN yum -y install sudo rpmbuilder make wget && \
    wget http://people.centos.org/tru/devtools-2/devtools-2.repo -O /etc/yum.repos.d/devtools-2.repo && \
    yum -y clean all

RUN curl -o /usr/local/bin/gosu -SL "https://github.com/tianon/gosu/releases/download/1.10/gosu-amd64" \
    && chmod +x /usr/local/bin/gosu

COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh

VOLUME /rpmbuilder
WORKDIR /rpmbuilder

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
