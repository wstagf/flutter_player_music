const express = require('express');
const router = express.Router();

router.get('/');
router.post('/');
router.put('/:id/musica');
router.get('/:id');
router.get('/musica/:id');
router.delete('/:id');
router.delete('/:id/musica/:musica');

module.exports = router;