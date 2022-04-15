const express = require("express");
const app = express();
const endpointService = require("./service/endpointService")
const dotenv = require('dotenv');
dotenv.config();

app.get("/weather", async (req, res, next) => {
    const type = req.query.type;
    const city = req.query.city;
    const endpoint = (await endpointService.getEndpoint(type)).rows[0];
    res.send({endpoint,city});
});


app.listen(3000);