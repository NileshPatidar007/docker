FROM amazonlinux
RUN yum update -y
RUN yum install git maven httpd -y
COPY index.html /var/www/html/
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
