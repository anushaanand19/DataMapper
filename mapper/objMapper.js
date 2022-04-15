module.exports = class ObjectMapper {
    static objMapper(mapper,apiData,sourceKey) {
        const objMapper = {};
        sourceKey= sourceKey.split('.');
        sourceKey.map(key => {
            apiData = apiData[key];
            return apiData
        })
        let mapData = JSON.parse(mapper);
        Object.keys(mapData).map(elem => {
            objMapper[mapData[elem]] = apiData[elem]
        })
        return objMapper;
    }
}