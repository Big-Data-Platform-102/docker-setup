FROM apache/hive:4.0.0

USER root

RUN apt-get update && apt-get install -y python3 python3-pip curl net-tools gettext

RUN apt-get install -y libpq-dev

RUN mkdir -p /opt/hive/lib

RUN mkdir -p ./jars && \
    curl -o ./jars/aws-java-sdk-bundle-1.12.262.jar https://repo1.maven.org/maven2/com/amazonaws/aws-java-sdk-bundle/1.12.262/aws-java-sdk-bundle-1.12.262.jar && \
    curl -o ./jars/hadoop-aws-3.3.4.jar https://repo1.maven.org/maven2/org/apache/hadoop/hadoop-aws/3.3.4/hadoop-aws-3.3.4.jar && \
    curl -o ./jars/postgresql-42.6.0.jar https://repo1.maven.org/maven2/org/postgresql/postgresql/42.6.0/postgresql-42.6.0.jar


COPY ./jars/*.jar /opt/hive/lib/

# Copy the hive-site.xml template with placeholders
COPY ./docker/hive-site-template.xml /opt/hive/conf/hive-site.xml
