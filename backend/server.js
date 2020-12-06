const express = require('express');
const app = express();
const port = process.env.PORT || 5000;

app.get('/api/hello', (req, res) => {
    res.send({message: "hello world"});
});

app.listen(port, () => console.log(`server is listening at localhost:${port}`));

