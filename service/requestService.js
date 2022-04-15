const axios = require("axios");
module.exports =  class RequestService {
    static async constructUrl(apiData,city) {
       const apiKey = apiData.api_key;
       const apiEndpoint = apiData.api_endpoint;
       const param = apiData.params;
       const url = `${apiEndpoint}?key=${apiKey}&${param}=${city}`;
       return url;
    }

    static async get(url) {
        const result = (await axios.get(url, {headers: {
            'user-agent': 'not axios', 
        }})).data;
        return result;
    }
}