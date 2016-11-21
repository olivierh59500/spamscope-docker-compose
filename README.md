![SpamScope](https://github.com/SpamScope/spamscope/blob/develop/docs/logo/spamscope.jpg?raw=true "SpamScope")

## Overview

Some Docker Compose examples with SpamScope.

### Elasticsearch

This Docker Compose enables SpamScope to use Elasticsearch and Kibana.

Follow official Elasticsearch [host prerequisites](https://github.com/elastic/elasticsearch-docker#host-prerequisites) to enable your host to use Elasticsearch docker.

This `docker-compose.yml` is only an example. If you want to use it you should change some options.

To start it, enter in `elasticsearch/` folder and give this command:

```shell
$ sudo docker-compose up
``` 

Then you should submit your topology. Example:

```shell
$ sudo docker-compose exec spamscope /opt/topology_submit.sh
```

That's it!

### Debug

This Docker Compose enables SpamScope in debug mode. The output will be JSON files.

This `docker-compose.yml` is only an example. If you want to use it you should change some options.

To start it, enter in `debug/` folder and give this command:

```shell
$ sudo docker-compose up
``` 

Then you should submit your topology. Example:

```shell
$ sudo docker-compose exec spamscope /opt/topology_submit.sh
```

That's it!
