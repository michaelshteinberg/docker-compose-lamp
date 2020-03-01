FROM centos:7
LABEL Michael Shteinberg <michaelsh87@gmail.com>

RUN yum -y update

RUN rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
RUN rpm -Uvh https://mirror.webtatic.com/yum/el7/webtatic-release.rpm

ADD apache-install.sh /apache-install.sh
ADD php-install.sh /php-install.sh
ADD run.sh /run.sh
RUN chmod 755 /run.sh

RUN /apache-install.sh
RUN /php-install.sh

CMD ["/run.sh"]

EXPOSE 80
EXPOSE 443