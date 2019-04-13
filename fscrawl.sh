
#!/bin/sh 
while getopts 'pim' OPTION; do
  docker pull shadiakiki1986/fscrawler
  case "$OPTION" in
    p)
      echo "FSCrawl PDF Tests"
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
      ;;

    i)
      echo "FSCrawl aon-ins"
      docker run -it --rm \
      --net="host" \
      --name my-fscrawler \
      -v ${PWD}/data-science/aon-ins:/usr/share/fscrawler/data/:ro \
      -v $PWD/config/aon-ins/:/usr/share/fscrawler/config-mount/aon-ins:ro \
      shadiakiki1986/fscrawler \
        --config_dir /usr/share/fscrawler/config \
        --loop 1 \
        --trace \
        aon-ins
      ;;

    m)
      echo "FSCrawl aon-mcd"
      docker run -it --rm \
      --net="host" \
      --name my-fscrawler \
      -v ${PWD}/data-science/aon-mcd:/usr/share/fscrawler/data/:ro \
      -v $PWD/config/aon-mcd/:/usr/share/fscrawler/config-mount/aon-mcd:ro \
      shadiakiki1986/fscrawler \
        --config_dir /usr/share/fscrawler/config \
        --loop 1 \
        --trace \
        aon-mcd
      ;;
    ?)
      echo "script usage: $(basename $0) [-l] [-h] [-a somevalue]" >&2
      exit 1
      ;;
  esac
done
shift "$(($OPTIND -1))"