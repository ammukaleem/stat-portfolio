FROM ubuntu:22.04
RUN apt update && apt install -y apache2 && apt clean
COPY portfolio /var/www/html/
EXPOSE 80
CMD ["apachectl", "-D", "FOREGROUND"]



