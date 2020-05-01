import 'package:mobx/mobx.dart';

part 'player_music_controller.g.dart';

class PlayerMusicController = _PlayerMusicBase with _$PlayerMusicController;

abstract class _PlayerMusicBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
