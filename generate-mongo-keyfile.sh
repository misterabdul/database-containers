#!/bin/sh

echo "Generating keyfiles..."

mkdir -p ./volumes/mongo1/config
openssl rand -base64 768 > ./volumes/mongo1/config/keyfile.txt
chmod 600 ./volumes/mongo1/config/keyfile.txt

mkdir -p ./volumes/mongo2/config
cp ./volumes/mongo1/config/keyfile.txt ./volumes/mongo2/config/keyfile.txt
chmod 600 ./volumes/mongo2/config/keyfile.txt

echo "Generated keyfiles."
