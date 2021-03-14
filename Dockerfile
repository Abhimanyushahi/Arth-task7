FROM centos:latest

RUN yum install httpd python3 net-tools -y
COPY index.html /var/www/html/
RUN yum install ncurses -y
RUN echo "/usr/sbin/httpd" >> /root/.bashrc
CMD ["/usr/sbin/httpd", "-D","FOREGROUND"]
EXPOSE 80 
