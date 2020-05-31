FROM centos

RUN yum install sudo -y
RUN yum install vim -y
RUN yum install /sbin/service -y
RUN yum install httpd -y
RUN yum install php -y
COPY *.html /var/www/html
CMD /usr/sin/httpd -DFOREGROUND && /bin/bash
Expose 80