# Dockerfile to set up a WordPress environment with PHP-FPM and MariaDB Client.

#Base Image.
FROM debian:buster

RUN apt-get update && apt-get upgrade

#Install all requiered packages.
RUN apt-get -y install wget

RUN apt-get install -y php7.3 \
     php-mysql \
     php-fpm \
     mariadb-client

RUN apt install curl -y

# Copy WordPress script to the container.
COPY ./tools/auto_config.sh .
COPY ./conf/wp-config.php .

# Making the WordPress script runnable.
RUN chmod +x auto_config.sh

# Expose port 9000 for PHP-FPM
EXPOSE 9000

# Specifies the script that's run everytime the container starts.
CMD ["/auto_config.sh"]
