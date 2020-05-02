const express = require('express');
const router = express.Router();
const BandaModel = require('../models/banda_model');
const mongoose = require('mongoose');


router.get('/', async function (req, res) {
    try {
        const bandas = await BandaModel.find({}, { _id: 1, nome: 1, imagem: 1 })
            .exec()
        res.json(bandas);
    } catch (error) {
        console.error(error);
        res.status(500).send({ 'message': 'Erro ao buscar banda', error: error })
    }
});


router.post('/', async function (req, res) {
    try {
        const bandaModel = new BandaModel({
            _id: mongoose.Types.ObjectId(),
            nome: req.body.nome,
            imagem: req.body.imagem,
            musicas: []
        });

        await bandaModel.save()
        res.status(200).send();
    } catch (error) {
        console.error(error);
        res.status(500).send({ 'message': 'Erro ao cadastrar banda', error: error })
    }
});


router.put('/:id/musica');
router.get('/:id');
router.get('/musica/:id');
router.delete('/:id');
router.delete('/:id/musica/:musica');

module.exports = router;