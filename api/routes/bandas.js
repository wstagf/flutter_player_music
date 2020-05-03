const express = require('express');
const router = express.Router();
const BandaModel = require('../models/banda_model');
const mongoose = require('mongoose');


router.get('/', async function (req, res) {
    try {
        const bandas = await BandaModel.find({}, { _id: 1, nome: 1, imagem: 1, album: 1 })
            .exec();
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
            album: req.body.album,
            musicas: []
        });

        await bandaModel.save();
        res.status(200).send();
    } catch (error) {
        console.error(error);
        res.status(500).send({ 'message': 'Erro ao cadastrar banda', error: error })
    }
});


router.put('/:id/musica', async function (req, res) {
    try {
        await BandaModel.findByIdAndUpdate(req.params['id'], {
            $push: {
                musicas: {
                    _id: mongoose.Types.ObjectId(),
                    nome: req.body.nome,
                    imagem: req.body.imagem,
                    url: req.body.url,
                }
            }
        }).exec();

        res.send({ message: 'Musica adicionada com sucesso' });

    } catch (error) {
        console.error(error);
        res.status(500).send({ 'message': 'Erro ao inserir musica em uma banda', error: error })
    }
});


router.get('/:id', async function (req, res) {
    try {
        const bandas = await BandaModel.findById(req.params['id']).exec();
        res.json(bandas);
    } catch (error) {
        console.error(error);
        res.status(500).send({ 'message': 'Erro ao buscar banda', error: error })
    }
});


router.get('/musica/:id', async function (req, res) {
    try {
        const banda = await BandaModel.findOne({ 'musicas._id': req.params['id'] }, { 'musicas.$': 1 }).exec();

        if (banda && banda.musicas) {
            res.json(banda.musicas[0]);
        } else {
            console.error(banda);
            res.send({})
        }

    } catch (error) {
        console.error(error);
        res.status(500).send({ 'message': 'Erro ao buscar musica', error: error })
    }
});

router.delete('/:id', async function (req, res) {
    try {
        await BandaModel.findByIdAndRemove(req.params['id']).exec();
        res.send();
    } catch (error) {
        console.error(error);
        res.status(500).send({ 'message': 'Erro ao excluir banda', error: error })
    }
});

router.delete('/:id/musica/:musica', async function (req, res) {
    try {
        const bandas = await BandaModel.findByIdAndUpdate(req.params['id'], {
            $pull: {
                musicas: {
                    _id: req.params['musica']
                }
            }
        }).exec();
        res.send();
    } catch (error) {
        console.error(error);
        res.status(500).send({ 'message': 'Erro ao excluir musica', error: error })
    }
});

module.exports = router;