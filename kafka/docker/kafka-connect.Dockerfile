FROM cnfldemos/cp-server-connect-datagen:0.6.2-7.5.0

# SHELL ["/bin/bash"]
RUN echo "Installing connector plugins"
RUN confluent-hub install --no-prompt \
--component-dir /usr/share/confluent-hub-components/ tabular/iceberg-kafka-connect:0.6.5
RUN confluent-hub install --no-prompt confluentinc/kafka-connect-datagen:0.4.0
RUN echo "Launching Kafka Connect worker"

CMD ["/etc/confluent/docker/run"]