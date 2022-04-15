const express = require("express");
const app = express();



app.get("/weather", (req,res,next) => {
    res.send("Server running");
});


app.listen(3000)