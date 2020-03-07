FROM java:8-jre
MAINTAINER <zhoutaoo zhootaoo@foxmail.com>
USER root
RUN wget http://dl.mycat.io/1.6.7.4/Mycat-server-1.6.7.4-release/Mycat-server-1.6.7.4-release-20200105164103-linux.tar.gz
RUN tar -zxvf Mycat-server-1.6.7.4-release-20200105164103-linux.tar.gz -C /
ENV MYCAT_HOME=/mycat
ENV PATH=$PATH:$MYCAT_HOME/bin
WORKDIR $MYCAT_HOME/bin
RUN chmod u+x ./mycat
EXPOSE 8066 9066
CMD ["./mycat","console"]
