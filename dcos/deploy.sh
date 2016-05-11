#!/bin/bash

RESOURCE_GROUP_NAME=tintoydcostest
RESOURCE_NAME=tintoydcostest
REGION=australiaeast

azure group create -n $RESOURCE_GROUP_NAME $RESOURCE_NAME -l $REGION --template-uri https://raw.githubusercontent.com/tintoy/arm-templates/master/dcos/arm-template.json -e ./template-parameters.json
