FROM ubuntu:16.04

#RUN apt-get update

#RUN apt-get install -y openssh-server python


#COPY authorized_keys /root/.ssh/authorized_keys

#RUN ["chmod","0600","/root/.ssh/authorized_keys"]

#EXPOSE 22

#CMD  ["/usr/sbin/sshd", "-D"]


RUN apt-get update && apt-get -y upgrade
ENV MYSQL_ROOT_PASSWORD passroot
ENV MYSQL_DATABASE wordpress
ENV MYSQL_USER root
ENV MYSQL_PASSWORD passuser


RUN DEBIAN_FRONTEND=noninteractive apt-get install -y mysql-server


ADD mysql/my.cnf /etc/mysql/conf.d/my.cnf
ADD mysql/my.cnf /etc/mysql/mysql.cnf
ADD mysql/script.sh /usr/local/bin/script.sh
RUN chmod +x /usr/local/bin/script.sh
