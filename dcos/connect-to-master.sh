#!/bin/bash

# Make localhost:9090 a proxy for port 80 on the management server.

LOCAL_MGMT_PORT=9090
REMOTE_MGMT_PORT=80
PREFIX=tintoy-dcos
REGION=australiaeast

ssh "tintoy@${PREFIX}mgmt.${REGION}.cloudapp.azure.com" -p 2200 -L ${LOCAL_MGMT_PORT}:localhost:${REMOTE_MGMT_PORT} -N
