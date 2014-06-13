FROM dockerfile/java
MAINTAINER jglick@cloudbees.com
# cribbed from cjlyth/jetty
WORKDIR /opt
ENV VERSION 9.2.1.v20140609
RUN curl "http://mirrors.ibiblio.org/eclipse/jetty/stable-9/dist/jetty-distribution-$VERSION.tar.gz" | tar xvfz -
RUN ln -sv jetty-distribution-$VERSION jetty
ADD etc /opt/jetty/etc
CMD /opt/jetty/bin/jetty.sh -d supervise
EXPOSE 8080
