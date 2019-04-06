
docker build -t sebp/elk -f Dockerfile .

    docker run -p 5601:5601 -p 9200:9200  -p 5044:5044 \
    -v ${PWD}/data-science/storage:/var/lib/elasticsearch sebp/elk

