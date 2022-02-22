FROM ubuntu:latest
RUN apt-get update
RUN DEBIAN_FRONTED=noninteractive TZ=Etc/UTC apt-get -y install tzdata
RUN apt-get intsall apache2 -y
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]