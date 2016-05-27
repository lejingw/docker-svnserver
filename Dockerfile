# My Svn Server Docker

FROM centos
MAINTAINER lejingw <lejingw@163.com>

RUN yum update
RUN yum install -y subversion

#RUN svnadmin create /opt/svn

VOLUME /opt/svn

COPY docker-entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

EXPOSE 3690

CMD ["svnserve", "-d", "--foreground", "-r", "/opt/svn"]

