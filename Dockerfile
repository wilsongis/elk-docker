# Dockerfile for ELK stack
# Elasticsearch, Logstash, Kibana Latest

# Build with:
# docker build -t <repo-user>/elk .

# Run with:
# docker run -p 5601:5601 -p 9200:9200 -p 5044:5044 -it --name elk <repo-user>/elk

FROM sebp/elk:latest
MAINTAINER Mike Wilson 
ENV REFRESHED_AT 2019-04-13


###############################################################################
#                                INSTALLATION
###############################################################################

ENV ES_HOME /opt/elasticsearch
WORKDIR ${ES_HOME}

RUN yes | CONF_DIR=/etc/elasticsearch gosu elasticsearch bin/elasticsearch-plugin \
    install -b ingest-attachment

# RUN yes | CONF_DIR=/etc/elasticsearch gosu elasticsearch bin/elasticsearch-plugin \
    #install https://oss.sonatype.org/service/local/repositories/releases/content/info/johtani/elasticsearch/plugin/ingest/ingest-csv/6.7.1.0/ingest-csv-6.7.1.0.zip

#RUN yes | CONF_DIR=/etc/elasticsearch gosu elasticsearch bin/elasticsearch-plugin \
    #install https://github.com/NLPchina/elasticsearch-sql/releases/download/6.7.0.0/elasticsearch-sql-6.7.0.0.zip


