FROM kalilinux/kali-rolling:latest

#RUN apt-get update && apt-get upgrade -y

#install packages for low level programming
#RUN apt-get install -y gcc gdb binutils nasm strace ltrace checksec patchelf ropper

#install python3
#RUN apt install -y python3

#run as non-root
#RUN groupadd -r aron && useradd -g aron aron
#USER aron

WORKDIR /home/

CMD /bin/bash
