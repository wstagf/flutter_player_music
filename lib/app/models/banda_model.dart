import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_player_music/app/models/musica_model.dart';

part 'banda_model.g.dart';

@JsonSerializable()
class BandaModel {
  @JsonKey(name: '_id')
  String id;
  String nome;
  String imagem;
  List<MusicaModel> musicas;

  BandaModel({
    this.id,
    this.nome,
    this.imagem,
    this.musicas,
  });

  factory BandaModel.fromJson(Map<String, dynamic> json) =>
      _$BandaModelFromJson(json);
  Map<String, dynamic> toJson() => _$BandaModelToJson(this);
}
