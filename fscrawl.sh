docker pull shadiakiki1986/fscrawler
docker run -it --rm \
  --net="host" \
  --name my-fscrawler \
  -v ${PWD}/data-science/pdf:/usr/share/fscrawler/data/:ro \
  -v $PWD/config/pdfsearch/:/usr/share/fscrawler/config-mount/pdfsearch:ro \
  shadiakiki1986/fscrawler \
    --config_dir /usr/share/fscrawler/config \
    --loop 1 \
    --trace \
    pdfsearch
