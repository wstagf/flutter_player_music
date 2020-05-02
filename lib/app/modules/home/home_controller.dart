import 'package:flutter_player_music/app/models/banda_model.dart';
import 'package:flutter_player_music/app/repositories/banda_repository.dart';
import 'package:mobx/mobx.dart';

part 'home_controller.g.dart';

class HomeController = _HomeBase with _$HomeController;

abstract class _HomeBase with Store {
  final BandaRepository repository;

  _HomeBase(this.repository);

  @observable
  ObservableFuture<List<BandaModel>> bandasFuture;

  @action
  void buscartodas() {
    bandasFuture = ObservableFuture(repository.buscarTodasBandas());
  }
}
