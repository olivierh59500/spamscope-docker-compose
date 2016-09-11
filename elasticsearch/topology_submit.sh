#!/bin/sh

# Complete command example
#docker exec -d spamscope sparse submit -f -w 1 -o "topology.tick.tuple.freq.secs=60" -o "topology.max.spout.pending=100" -o "topology.sleep.spout.wait.strategy.time.ms=10"

# Example run
# $ ./topology_submit.sh spamscope-elasticsearch ../../spamscope-dockerfile/topologies/

CONTAINER=spamscope

# topology name
TOPOLOGY=$1

# SpamScope topology path
TOPOLOGY_PATH=$2

# workers number
NR_WORKERS=1

# Seconds reload configuration
TICK=60

# max tuple pending
MAX_PENDING=1000

# Milliseconds sleep
SPOUT_SLEEP=1

# Copy on SpamScope topology path
cp -af ${TOPOLOGY}.clj ${TOPOLOGY_PATH}

DOCKER_CMD="docker exec -d ${CONTAINER}"
STREAMPARSE_CMD="sparse submit -f -n ${TOPOLOGY} -w ${NR_WORKERS} -o topology.tick.tuple.freq.secs=${TICK} -o topology.max.spout.pending=${MAX_PENDING} -o topology.sleep.spout.wait.strategy.time.ms=${SPOUT_SLEEP}"

${DOCKER_CMD} ${STREAMPARSE_CMD}
