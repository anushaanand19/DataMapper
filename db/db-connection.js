const { Client } = require("pg")

const client = new Client({
    host: `${process.env.DATABASE_HOSTNAME}`,
    database: `${process.env.DATABASE_NAME}`,
    user: `${process.env.DATABASE_USER}`,
    password: `${process.env.DATABASE_PASSWORD}`,
    port: `${process.env.DATABASE_PORT}`
})

client.connect();
module.exports = client;