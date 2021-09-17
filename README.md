# Various database containers for local development purposes

# Mongodb

Replica set configurations

```mongodb
rsconf = {
   _id : "rsmongo",
   members: [
       {
           "_id": 0,
           "host": "mongo:27017",
           "priority": 1
       },
       {
           "_id": 1,
           "host": "mongo2:27017",
           "priority": 2
       },
       {
           "_id": 2,
           "host": "mongo3:27017",
           "priority": 3
       }
   ]
}
```
