const client = require("../db/db-connection")

module.exports =  class EndpointService {
    static async getEndpoint(type) {
        const endpoint = await client.query(`Select * From weather where api_label = '${type}'`);
        return endpoint;
    }
}