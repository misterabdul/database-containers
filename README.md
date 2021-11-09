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

Setup mongodb (from inside the container's shell)

```sh
# Setup replica set
mongo
> rs.initiate()
> rs.add('mongo2:27017')
> rs.add('mongo3:27017')

# Setup admin user
mongo
> use admin
> db.createUser({user: 'admin', pwd: '<your_password>', roles:[{role: 'userAdminDatabase', db: 'admin'}]})
```
