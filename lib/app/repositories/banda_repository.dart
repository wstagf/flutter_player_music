import 'package:dio/dio.dart';
import 'package:flutter_player_music/app/models/banda_model.dart';
import 'package:flutter_player_music/environments.dart';

class BandaRepository {
  Future<List<BandaModel>> buscarTodasBandas() {
    var dio = Dio();

    return dio.get(base_url + "/bandas").then((value) =>
        value.data.map<BandaModel>((b) => BandaModel.fromJson(b)).toList());
  }
}
