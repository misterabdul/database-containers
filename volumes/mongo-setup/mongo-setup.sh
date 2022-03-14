#!/bin/sh

echo "Starting MongoDB replica set..."
mongo mongo:27017/$MONGO_INITDB_DATABASE -u$MONGO_INITDB_ROOT_USERNAME -p$MONGO_INITDB_ROOT_PASSWORD --authenticationDatabase $MONGO_INITDB_DATABASE /external/scripts/mongo-setup.js
echo "Finished"
