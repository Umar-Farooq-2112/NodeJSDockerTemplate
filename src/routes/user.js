const { Router } = require('express');
const router = Router();

router.get('/', (req, res) => {
    res.status(200).json('Server is running on port 4000');
});

module.exports = router;
