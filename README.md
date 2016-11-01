![SpamScope](https://github.com/SpamScope/spamscope/blob/develop/docs/logo/spamscope.jpg?raw=true "SpamScope")

## Overview

Some examples of Docker Compose with SpamScope.

### Elasticsearch

This docker compose enables SpamScope to use Elasticsearch and Kibana.

Follow official Elasticsearch [host prerequisites](https://github.com/elastic/elasticsearch-docker#host-prerequisites) to enable your host to use Elasticsearch docker.

This `docker-compose.yml` is only an example. If you want to use it you should change some options.

To start it, enter in `elasticsearch/` folder and give this command:

```shell
$ sudo docker-compose up
``` 

Then you should submit your topology. Example:

```shell
$ sudo ./topology_submit.sh spamscope_elasticsearch
```
