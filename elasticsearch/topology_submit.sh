#!/bin/sh

# Complete command example
# docker exec -d spamscope sparse submit -f -w 1 -n spamscope_elasticsearch -o "topology.tick.tuple.freq.secs=60" -o "topology.max.spout.pending=250" -o "topology.sleep.spout.wait.strategy.time.ms=10" -o "spamscope_conf=/etc/spamscope/spamscope.yml"

# Example run
# $ ./topology_submit.sh spamscope_elasticsearch

CONTAINER=spamscope
SPAMSCOPE_CONF="/etc/spamscope/spamscope.yml"

# topology name
TOPOLOGY=$1

# workers number
NR_WORKERS=1

# Seconds reload configuration
TICK=60

# max tuple pending
MAX_PENDING=250

# Milliseconds sleep
SPOUT_SLEEP=10

DOCKER_CMD="docker exec -d ${CONTAINER}"
STREAMPARSE_CMD="sparse submit -f -n ${TOPOLOGY} -w ${NR_WORKERS} -o topology.tick.tuple.freq.secs=${TICK} -o topology.max.spout.pending=${MAX_PENDING} -o topology.sleep.spout.wait.strategy.time.ms=${SPOUT_SLEEP} -o spamscope_conf=${SPAMSCOPE_CONF}"

${DOCKER_CMD} ${STREAMPARSE_CMD}
