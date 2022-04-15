const express = require("express");
const app = express();
const dotenv = require('dotenv');
dotenv.config();
const endpointService = require("./service/endpointService");
const requestService = require("./service/requestService");
const mapper = require("./mapper/objMapper");

app.get("/weather", async (req, res, next) => {
    const type = req.query.type;
    const city = req.query.city;
    const endpoint = (await endpointService.getEndpoint(type)).rows[0];
    const url = await requestService.constructUrl(endpoint,city);
    const data = await requestService.get(url);
    const mappedData = mapper.objMapper(endpoint.keyMap, data,endpoint.sourceKey);
    res.send(mappedData);
});


app.listen(3000);