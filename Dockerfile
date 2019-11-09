FROM  devopsedu/webapp
RUN apt-get update -y
RUN apt-get install -y apache2
RUN apt-get install -y php libapache2-mod-php php-cli php-mysql php-gd php-imagick php-recode php-tidy php-xmlrpc
ADD ./website/ /var/www/html/
EXPOSE 80
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
