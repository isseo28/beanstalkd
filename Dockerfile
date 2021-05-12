FROM ubuntu:18.04

WORKDIR /root

# Install the required software
RUN apt update
RUN apt install -y beanstalkd supervisor

# Copy config file
COPY ./conf/beanstalkd /etc/default/beanstalkd

# Expose the ports
EXPOSE 11300
