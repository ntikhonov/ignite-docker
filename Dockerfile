# Start from a Java 7 image.
FROM java:7

# Set ignite home
ENV IGNITE_HOME /opt/ignite

RUN mkdir -p $IGNITE_HOME

# Set
WORKDIR $IGNITE_HOME

# Download ignite.
ADD http://apache-mirror.rbc.ru/pub/apache/incubator/ignite/1.0.0/ignite-fabric-1.0.0-incubating.zip $IGNITE_HOME

# Start ignite.
CMD ignite-fabric-1.0.0-incubating/bin/ignite.sh