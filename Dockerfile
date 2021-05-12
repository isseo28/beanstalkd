FROM ubuntu:18.04

WORKDIR /root

# Install the required software
RUN apt update
RUN apt install -y beanstalkd supervisor net-tools

# Copy supervisor config file
COPY ./conf/beanstalkd.conf /etc/supervisor/conf.d/beanstalkd.conf

# Expose the ports
EXPOSE 11300

# Set the launch command
CMD ["/usr/bin/supervisord", "-n", "-c", "/etc/supervisor/supervisord.conf"]
