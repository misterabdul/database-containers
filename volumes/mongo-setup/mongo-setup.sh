#!/bin/sh

echo "Starting MongoDB replica set..."
mongosh mongo:27017/$MONGO_INITDB_DATABASE --username $MONGO_INITDB_ROOT_USERNAME --password $MONGO_INITDB_ROOT_PASSWORD --authenticationDatabase $MONGO_INITDB_DATABASE --file /external/scripts/mongo-setup.js
echo "Finished"
