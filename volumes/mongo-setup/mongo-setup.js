const rsConfig = {
    _id: "rsmongo",
    members: [{
        "_id": 0,
        "host": "mongo:27017",
        "priority": 1
    }, {
        "_id": 1,
        "host": "mongo2:27017",
        "priority": 0
    }]
}

const rsStatus = rs.status();
if(rsStatus.code == 94) {
    rs.initiate(rsConfig);
} else {
    rs.reconfig(rsConfig, {force: true});
}
