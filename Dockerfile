FROM tomcat:8

RUN apt-get update && \
    apt-get install -y libpostgresql-jdbc-java && \
    ln -s /usr/share/java/postgresql-jdbc4.jar /usr/local/tomcat/lib/postgresql-jdbc4.jar && \
    apt-get -y clean && \
    rm -rf /var/lib/apt/lists/*
    
