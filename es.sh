
docker build -t pdfsearch -f Dockerfile .
if [[ "$(docker images -q pdfsearch 2> /dev/null)" == "" ]]
then
  docker run -p 5601:5601 -p 9200:9200  -p 5044:5044 \
    -v ${PWD}/data-science:/var/lib/elasticsearch --name pdfsearch pdfsearch
else 
    docker run -p 5601:5601 -p 9200:9200  -p 5044:5044 \
    -v ${PWD}/data-science/storage:/var/lib/elasticsearch pdfsearch
fi
