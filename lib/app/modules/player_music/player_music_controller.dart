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
        Future.delayed(
            Duration(seconds: 1),
            () => {
                  duracaoMusica = audioPlayer.duration,
                  duracaoMusicaEmSegundos = duracaoMusica.inSeconds +
                      (duracaoMusica.inMinutes * 60) +
                      (duracaoMusica.inHours * 3600) +
                      (duracaoMusica.inDays * 86400)
                });
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

  @observable
  double percentProgredido = 0.0;

  @observable
  int duracaoMusicaEmSegundos = 0;

  @action
  void calcPercentProgredido() {
    var tempoDecorridoEmSegundos = 0;

    if (duracaoMusica != null) {
      if (duracaoMusicaEmSegundos == 0) {
        percentProgredido = 0.0;
      } else {
        tempoDecorridoEmSegundos = tempoDaMusica.inSeconds +
            (tempoDaMusica.inMinutes * 60) +
            (tempoDaMusica.inHours * 3600) +
            (tempoDaMusica.inDays * 86400);
        percentProgredido = tempoDecorridoEmSegundos / duracaoMusicaEmSegundos;
      }
    } else {
      percentProgredido = 0.0;
    }
  }

  @action
  irParaTempoDaMusica(double value) {
    audioPlayer.seek(value * duracaoMusicaEmSegundos);
  }

  @action
  void pararMusica() {
    audioPlayer.stop();
    musicaTocando = false;
    tempoDaMusica = Duration.zero;
  }

  @computed
  bool get existeProximaMusica =>
      bandaModel != null ? bandaModel.musicas.length - 1 > faixa : false;

  @computed
  bool get existeAnteriorMusica => bandaModel != null ? faixa > 0 : false;

  @action
  void proximaMusica() {
    if (existeProximaMusica) {
      faixa++;
      pararMusica();
      tocarOuPausarMusica();
    }
  }

  @action
  void musicaAnterior() {
    if (existeAnteriorMusica) {
      faixa--;
      pararMusica();
      tocarOuPausarMusica();
    }
  }
}
