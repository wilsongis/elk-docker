# Elastic Search and FSCrawler for PDFs

## Machine Setup

### Mac OS

Install Homebrew:

```bash
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

Install git:
```bash
brew install git cask
```

Install Tools:
```bash
brew cask install iterm2 docker
```

## PDF Setup

Drop PDFs into the /data-science/pdf folder

## Launching

Elastic Search:
```bash
sh es.sh
```

Wait for ES to start may take a couple minutes.

Open a New Term Window cmd-T in iTerm2

FSCrawler:
```bash
sh fscrawl.sh
```

Will return to command prompt when FSCrawl is finished.

Open Kibana and explore the data


- Setup Docker-Compose
- Clean Up Files