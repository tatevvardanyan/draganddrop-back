const express = require('express');
const app = express();
const cors = require("cors")
const session = require('express-session');
const router = require("./router")


app.use(express.json());
app.use(cors());
app.use(express.urlencoded({ extended: false }));
app.use(express.static("./public"));
app.use(session({
    secret: 'tetras',
    resave: false,
    saveUninitialized: true
}))

app.use('/', router)
app.listen(8080, (err) => {
    if (err) {
        return console.log(err);
    } else {
        console.log("Server Ok");
    }
})