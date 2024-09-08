FROM bitnami/spark:3.5.0

USER root

RUN apt-get update && apt-get install -y python3 python3-pip curl

RUN apt-get install -y libpq-dev

COPY ./docker/spark-defaults.conf /opt/bitnami/spark/conf/

COPY ./docker/hive-site-template.xml /opt/bitnami/spark/conf/hive-site.xml
