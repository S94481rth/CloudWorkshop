const express = require('express');

const app = express();

const PORT = 3000;

app.get('/', (req,res)=>{
    res.send("Hi aneesh, wassup, 2nd change")
});

app.listen(PORT, ()=>{
    console.log(`Connected to port ${PORT}`);
})