FROM centos:centos7
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

ADD supervisord.conf /etc/supervisord.conf
CMD ["/install/bootstrap.sh"]