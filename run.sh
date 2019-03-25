
docker build -t pdfsearch -f Dockerfile .
[ -z $(docker images -q pdfsearch) ] || docker image rm pdfsearch
docker run -p 5601:5601 -p 9200:9200  -p 5044:5044 \
    -v ${PWD}/data-science:/var/lib/elasticsearch --name pdfsearch pdfsearch