FROM ubuntu:latest

RUN apt-get update && apt-get upgrade -y

# create normal user, add to sudoers
RUN apt install sudo
RUN useradd -s /bin/bash -d /home/null null && groupadd wheel && usermod -a -G wheel null
RUN echo '%wheel ALL=(ALL) ALL' > /etc/sudoers.d/wheel
# change passwd
RUN echo null:pw | chpasswd

#install basic tools
RUN apt install -y vim-tiny screen wget 

#install communication tools
RUN apt install -y weechat irssi
RUN apt install -y tor proxychains
RUN echo 'quiet_mode' >> /etc/proxychains.conf

USER null 
WORKDIR /home/null
CMD /bin/bash

COPY ./screenrc /home/null/.screenrc
COPY ./var /home/null/.var
RUN echo 'source /home/null/.var' >> /home/null/.bashrc 
