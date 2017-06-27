FROM java:8
MAINTAINER Driss AIT ALI <driss.ait.ali@cgi.com>

COPY src /home/root/javahelloworld/src 
WORKDIR /home/root/javahelloworld
RUN mkdir bin
RUN javac -d bin src/HelloWorld.java
RUN ping 127.0.0.1 -c 10 
 
ENTRYPOINT ["java", "-cp", "bin", "HelloWorld"]
ENV FOO bar
