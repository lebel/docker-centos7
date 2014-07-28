FROM centos:centos7

MAINTAINER Przemyslaw Ozgo <linux@ozgo.info>

# - Install basic packages like wget, vi, tar, git etc
# - Install EPEL & Remi yum repository
# - Install supervisord (via python's easy_install - it has the newest 3.x version)
RUN \
  yum install -y --nogpgcheck wget yum-utils && \

  wget -q http://dl.fedoraproject.org/pub/epel/beta/7/x86_64/epel-release-7-0.2.noarch.rpm http://rpms.famillecollet.com/enterprise/remi-release-7.rpm && \
  rpm -Uvh remi-release-7*.rpm epel-release-7*.rpm && \
  rm -f remi-release-7*.rpm epel-release-7*.rpm && \
  yum-config-manager -q --enable remi && \

  yum update -y --nogpgcheck && \

  yum install -y --nogpgcheck python-setuptools which vim-minimal tar && \
  yum clean all && \

  easy_install supervisor && \
  mkdir -p /etc/supervisord.d /var/log/supervisor


# Bootstrap
RUN mkdir -p /install/init /install/data /install/temp
ADD install/ /install/

ADD /install/supervisord.conf /etc/supervisord.conf

CMD ["/install/bootstrap.sh"]


#ENTRYPOINT ["/usr/sbin/httpd"]
#CMD ["-D", "FOREGROUND"]
#CMD ["service", "sshd", "start"]