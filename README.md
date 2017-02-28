# docker-mongodb-Centos7
Dockerfile to build a MongoDb container image on Centos7.

I have tried install mongodb with yum in dockerfile ,but failed. What ever, I prefer install it with tarball, I can configure them on my way and find the path easily.

1.You should install docker on your Cenots7.

docker --version

Docker version 1.12.6

cat /etc/redhat-release

CentOS Linux release 7.3.1611 

2.Making directory and create your dockerfile

My directory:  /database3/mydockerbuild/

My dockerfile:  /database3/mydockerbuild/Dockerfile

Then copy the content to your dockerfile.

3.Creating your own image.

Don't foget the last period which means your path of dockerfile,you can change to your dockerfile directory.

docker build -t jmongodb . 

docker images  # It will list all of your images, if you success , you can find your image jmongodb

4.Running your container.

docker run -p 28001:27017 --name mongo_instance_001 -d -v /database3/data/:/data/db jmongodb

docker ps -a  # It will list all of your containers

5.Test your mongodb

If you have mongodb,you can use command:

mongo --port 28001

6.Giving your more information

docker run -p 28001:27017 --name mongo_instance_001 -d -v /database3/data/:/data/db jmongodb

28001 is the host port ,you can also change to 27017 , I just give a example.

mongo_instance_001 is your container name.

/database3/data is your host directory

/data/db is your container direcotry.

This command will expose a port 28001 to outsie of your mongodb, and mount the container path /data/db on your host directory /database3/data.

If the 5th step successed, you will find that there are many new files of mongodb on your /database3/data .

#At last, if my dockerfile works, don't forget to give a star. Thanks.
