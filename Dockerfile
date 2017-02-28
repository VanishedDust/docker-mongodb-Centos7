FROM centos:centos7.3.1611
MAINTAINER LiuQiang "liuqianggege1@gmail.com"
RUN mkdir -p /document
WORKDIR /document
# the download link you can update on Mongodb web site:https://www.mongodb.com/download-center?jmp=nav#community
RUN curl -O https://fastdl.mongodb.org/linux/mongodb-linux-x86_64-3.4.2.tgz
# remind maintain with the download tgz file
RUN tar -zxvf mongodb-linux-x86_64-3.4.2.tgz
# rename 
RUN mv mongodb-linux-x86_64-3.4.2 mongodb
RUN mkdir -p /data/db
VOLUME ["/data/db"]
WORKDIR /data
EXPOSE 27017
ENTRYPOINT ["/document/mongodb/bin/mongod"]         
