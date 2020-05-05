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

  @action
  Future<void> tocarOuPausarMusica() async {
    if (musica != null) {
      if (musicaTocando) {
        await audioPlayer.pause();
        musicaTocando = false;
      } else {
        await audioPlayer.play(base_url + musica.url);
        musicaTocando = true;
      }
    }
  }
}
