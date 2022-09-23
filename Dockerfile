FROM alpine:latest

# add normal user
RUN apk add --no-cache sudo 
RUN addgroup aron && adduser -H -D -G aron aron && adduser aron wheel
RUN echo '%wheel ALL=(ALL) ALL' > /etc/sudoers.d/wheel
RUN echo aron:pw | chpasswd

# add cpp packages
RUN apk add --no-cache g++ gdb

USER aron
WORKDIR /home/
CMD /bin/sh
