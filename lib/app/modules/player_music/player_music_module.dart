import 'package:flutter_player_music/app/modules/player_music/player_music_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_player_music/app/modules/player_music/player_music_page.dart';
import 'package:flutter_player_music/app/repositories/banda_repository.dart';

class PlayerMusicModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => PlayerMusicController(i.get<BandaRepository>())),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => PlayerMusicPage(banda: args.data)),
      ];

  static Inject get to => Inject<PlayerMusicModule>.of();
}
