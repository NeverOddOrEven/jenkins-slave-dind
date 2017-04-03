FROM docker:dind

RUN apk update \
        && apk add openssh \
        && apk add openrc

RUN     openrc \
        && touch /run/openrc/softlevel \
        && rc-update add sshd

RUN     adduser -D jenkins \
        && echo "jenkins:jenkins" | chpasswd \
        && echo "docker:x:999:jenkins" >> /etc/group

COPY dockerd-entrypoint.sh /usr/local/bin/dockerd-entrypoint.sh
