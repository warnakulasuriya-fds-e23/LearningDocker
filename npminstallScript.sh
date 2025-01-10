#!/bin/bash
cd /app
if [[ "$NODE_ENV" == *development* ]];
then
    npm install --only=dev
else
    npm install --only=production
fi

