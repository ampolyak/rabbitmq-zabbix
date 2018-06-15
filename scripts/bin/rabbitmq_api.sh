#!/bin/bash

TYPE_OF_CHECK=${1}
METRIC=${2}
NODE=${3}

RABBIT_USER='guest'
RABBIT_PASSWORD='guest'
CONF='/etc/zabbix/zabbix_agentd.conf'
LOGLEVEL='INFO'
LOGFILE='/var/log/zabbix/zabbix_agentd.log'
PORT='15672'
PROXY=''

if [[ -z "${HOSTNAME}" ]]; then
    HOSTNAME=`hostname`
fi
if [[ -z "${NODE}" ]]; then
    NODE=`hostname`
fi

/usr/local/bin/rabbitmq_api.py --proxy="${PROXY}" --hostname="${HOSTNAME}" --username="${RABBIT_USER}" --password="${RABBIT_PASSWORD}" --check="${TYPE_OF_CHECK}" --metric="${METRIC}" --node="${NODE}" --filters="${FILTER}" --conf="${CONF}" --loglevel="${LOGLEVEL}" --logfile="${LOGFILE}" --port="${PORT}" --protocol="${PROTOCOL}"
