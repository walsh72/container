FROM kalilinux/kali-rolling:latest

RUN apt update 

#install basic packages
RUN apt install -y vim screen 

#install packages for grayhat
RUN apt install -y gcc gdb binutils nasm strace ltrace checksec patchelf ropper

#for programming
RUN apt install -y g++ gdb
RUN apt install -y python3


#environment
COPY ./screenrc /root/.screenrc
COPY ./var /root/.var
COPY ./vimrc /root/.vimrc
RUN echo 'source /root/.var' >> /root/.bashrc

