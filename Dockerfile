# FROM multiarch/ubuntu-debootstrap:powerpc-xenial
FROM multiarch/debian-debootstrap:s390x-jessie
RUN apt-get update
RUN apt-get -y install git cmake g++
ADD script.sh ./script.sh
ENTRYPOINT ["sh", "script.sh"]
