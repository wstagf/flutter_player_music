import 'package:flutter_player_music/app/models/banda_model.dart';
import 'package:flutter_player_music/app/models/musica_model.dart';
import 'package:flutter_player_music/app/repositories/banda_repository.dart';
import 'package:mobx/mobx.dart';

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
}
