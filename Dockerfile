FROM frolvlad/alpine-gcc

RUN apk add nano

RUN cd /etc/apk &&\
echo 'http://dl-cdn.alpinelinux.org/alpine/edge/testing/' >> repositories &&\
apk update &&\
apk add sbcl

# set a directory for the app
WORKDIR /home/403

COPY /tp /home/403/tp
ADD givens.tar.gz /home/403

# run the command
CMD ["/bin/ash"]