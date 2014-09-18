FROM centos:centos7
<<<<<<< HEAD
MAINTAINER Przemyslaw Ozgo <linux@ozgo.info>

ADD install/ /install/

RUN yum install -y --nogpgcheck wget yum-utils epel-release && \
rpm -Uvh http://rpms.famillecollet.com/enterprise/remi-release-7.rpm && \
yum-config-manager -q --enable remi && \
yum update -y --nogpgcheck && \
yum install -y --nogpgcheck python-setuptools which vim-minimal vim-enhanced tar && \
yum clean all && \
easy_install supervisor && \
mkdir -p /etc/supervisord.d /var/log/supervisor && \
mkdir -p /install/init /install/data /install/temp && \
touch ~/.bashrc && \
echo "alias ll='ls -lah'" >> ~/.bashrc
=======
MAINTAINER Marcin Ryzycki marcin@m12.io, Przemyslaw Ozgo linux@ozgo.info

# - Install basic packages needed by supervisord
# - Install supervisord (via python's easy_install - as it has the newest 3.x version)
RUN \
  yum install -y epel-release python-setuptools && \
  yum update -y && \
  yum clean all && \

  easy_install supervisor && \
  mkdir -p /etc/supervisord.d /var/log/supervisor

# Add supervisord conf, bootstrap.sh files
ADD container-files /
>>>>>>> devel

CMD ["/config/bootstrap.sh"]
