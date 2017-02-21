FROM java:7

COPY src /home/root/javahelloworld/src
WORKDIR /home/root/javahelloworld
RUN msdir bin
RUN javac -d bin src/hellworld.java
RUN apt-get upadte && apt-get install vim -y

ENTERPOINT ["java","-cp","bin","helloworld"]
