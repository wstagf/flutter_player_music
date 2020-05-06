import 'package:audioplayer2/audioplayer2.dart';
import 'package:flutter_player_music/app/models/banda_model.dart';
import 'package:flutter_player_music/app/models/musica_model.dart';
import 'package:flutter_player_music/app/repositories/banda_repository.dart';
import 'package:mobx/mobx.dart';

import '../../../environments.dart';

part 'player_music_controller.g.dart';

class PlayerMusicController = _PlayerMusicBase with _$PlayerMusicController;

abstract class _PlayerMusicBase with Store {
  final BandaRepository bandaRepository;

  _PlayerMusicBase(this.bandaRepository);

  @observable
  BandaModel bandaModel;

  @observable
  ObservableFuture<BandaModel> bandFuture;

  @action
  buscarBanda(String id) async {
    bandFuture = ObservableFuture(bandaRepository.buscarBandaPorId(id));
    bandaModel = await bandFuture;
  }

  @observable
  int faixa = 0;

  @computed
  MusicaModel get musica =>
      bandaModel != null ? bandaModel.musicas[faixa] : null;

  @observable
  AudioPlayer audioPlayer = AudioPlayer();

  @observable
  bool musicaTocando = false;

  @observable
  Duration duracaoMusica;

  @computed
  String get tempoTotal {
    if (duracaoMusica != null) {
      int segundosInt = duracaoMusica.inSeconds.remainder(60);
      String segundosString = '';
      if (segundosInt < 10) {
        segundosString = '0' + segundosInt.toString();
      } else {
        segundosString = segundosInt.toString();
      }
      return '${duracaoMusica.inMinutes.remainder(60)}:${segundosString}';
    } else {
      return '0:00';
    }
  }

  @action
  Future<void> tocarOuPausarMusica() async {
    if (musica != null) {
      if (musicaTocando) {
        await audioPlayer.pause();
        musicaTocando = false;
      } else {
        await audioPlayer.play(base_url + musica.url);
        Future.delayed(Duration(milliseconds: 20),
            () => duracaoMusica = audioPlayer.duration);
        musicaTocando = true;
      }
    }
  }

  @observable
  Duration tempoDaMusica = Duration();

  @computed
  String get tempoProgredido {
    if (tempoDaMusica != null) {
      int segundosInt = tempoDaMusica.inSeconds.remainder(60);
      String segundosString = '';
      if (segundosInt < 10) {
        segundosString = '0' + segundosInt.toString();
      } else {
        segundosString = segundosInt.toString();
      }
      return '${tempoDaMusica.inMinutes.remainder(60)}:${segundosString}';
    } else {
      return '0:00';
    }
  }

  @action
  Future<void> monitorarProgressoDaMusica(Duration d) async {
    tempoDaMusica = d;
  }

  @computed
  double get totalTempoDecorrido => duracaoMusica != null
      ? (duracaoMusica.inSeconds > 0
          ? duracaoMusica.inSeconds.toDouble() * 1 / tempoDaMusica.inSeconds
          : 0)
      : 0;
}
