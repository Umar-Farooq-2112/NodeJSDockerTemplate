const express = require('express');
const userRoutes = require('./routes/user');

const app = express();

const PORT = process.env.PORT || 4000;
app.set('port', PORT);

app.use('/', userRoutes);

app.listen(PORT, () => {
    console.log('Server is running on port', PORT);
});
