require('dotenv').config();
const PORT = process.env.PORT || 3000;

const express = require('express');

const app = express();

app.use(express.urlencoded({extended: true}));

const router = require('./app/router');
app.use(router);

app.listen( PORT,  () => {
    console.log(`Listening on ${PORT}`);
});