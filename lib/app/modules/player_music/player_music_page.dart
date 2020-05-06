import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_player_music/app/models/banda_model.dart';
import 'package:flutter_player_music/app/models/musica_model.dart';
import 'package:flutter_player_music/app/modules/player_music/player_music_controller.dart';
import 'package:seekbar/seekbar.dart';

import '../../../environments.dart';

class PlayerMusicPage extends StatefulWidget {
  final BandaModel banda;
  const PlayerMusicPage({Key key, this.banda}) : super(key: key);

  @override
  _PlayerMusicPageState createState() => _PlayerMusicPageState();
}

class _PlayerMusicPageState
    extends ModularState<PlayerMusicPage, PlayerMusicController> {
  @override
  void initState() {
    // TODO: implement initState
    controller.buscarBanda(widget.banda.id);

    controller.audioPlayer.onAudioPositionChanged
        .listen((d) => controller.monitorarProgressoDaMusica(d));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Tocando musica' + widget.banda.nome),
      ),
      backgroundColor: Colors.black,
      body: FutureBuilder(
        future: controller.bandFuture,
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.waiting:
              return Center(
                child: CircularProgressIndicator(),
              );
              break;
            case ConnectionState.done:
              if (snapshot.hasData) {
                return Observer(builder: (_) {
                  var musica = controller.musica;
                  return Column(
                    children: <Widget>[
                      buildImageHeader(musica),
                      buildNameMusic(musica),
                      buildProgressbar(musica),
                      buildButtons(musica)
                    ],
                  );
                });
              } else {
                return Center(
                  child: Text('Não há musicas nesta banda'),
                );
              }
              break;
            default:
              return Center(
                child: CircularProgressIndicator(),
              );
              break;
          }
        },
      ),
    );
  }

  Widget buildButtons(MusicaModel musica) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Row(
        children: <Widget>[
          FlatButton(
            child: Icon(
              Icons.skip_previous,
              size: 40,
            ),
            onPressed: () {},
          ),
          Expanded(
            child: FlatButton(
              child: Icon(
                controller.musicaTocando
                    ? Icons.pause_circle_outline
                    : Icons.play_circle_outline,
                size: 40,
              ),
              onPressed: () => controller.tocarOuPausarMusica(),
            ),
          ),
          FlatButton(
            child: Icon(
              Icons.skip_next,
              size: 40,
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  Widget buildProgressbar(MusicaModel musica) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(top: 30, right: 35, left: 35),
          child: SeekBar(
            value: controller.totalTempoDecorrido,
            onStartTrackingTouch: () {},
            onProgressChanged: (value) {},
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 30, right: 40, left: 35),
          child: Row(
            children: <Widget>[
              Text(controller.tempoProgredido),
              Expanded(
                child: Container(),
              ),
              Text(controller.tempoTotal),
            ],
          ),
        )
      ],
    );
  }

  Widget buildNameMusic(MusicaModel musica) {
    return Column(
      children: <Widget>[
        Container(
          child: Text(
            musica.nome,
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          child: Text(
            widget.banda.nome,
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ),
      ],
    );
  }

  Container buildImageHeader(MusicaModel musica) {
    return Container(
      padding: EdgeInsets.only(left: 30, right: 30, top: 30, bottom: 20),
      child: Container(
        width: MediaQuery.of(this.context).size.width,
        height: MediaQuery.of(this.context).size.height * 0.4,
        decoration: BoxDecoration(
          color: Colors.grey[600],
          image: DecorationImage(
              image: NetworkImage(base_url + widget.banda.imagem),
              fit: BoxFit.scaleDown),
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(
                color: Colors.grey[700], blurRadius: 15, offset: Offset(2, 5)),
          ],
        ),
      ),
    );
  }
}
