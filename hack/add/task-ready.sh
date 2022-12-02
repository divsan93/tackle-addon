#!/bin/bash

host="${HOST:-localhost:80}"

curl -X POST ${host}/hub/tasks -d \
'{
    "name":"Test",
    "state": "Ready",
    "addon": "addon-jeff",
    "application": {"id": 1},
    "data": {
      "path": "/etc"
    }
}' | jq -M .
