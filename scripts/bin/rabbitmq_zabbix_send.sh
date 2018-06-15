#!/usr/bin/env bash
die() {
        echo "$1, exiting"
        exit 1
}
/usr/local/bin/rabbitmq_api.sh queues || die "rabbitmq queues pool error"
/usr/local/bin/rabbitmq_api.sh exchanges || die "rabbitmq exchanges pool error"

