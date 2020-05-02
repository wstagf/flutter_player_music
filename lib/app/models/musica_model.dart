import 'package:json_annotation/json_annotation.dart';

part 'musica_model.g.dart';

@JsonSerializable()
class MusicaModel {
  @JsonKey(name: '_id')
  String id;

  String nome;
  String url;

  MusicaModel({
    this.id,
    this.nome,
    this.url,
  });

  factory MusicaModel.fromJson(Map<String, dynamic> json) =>
      _$MusicaModelFromJson(json);

  Map<String, dynamic> toJson() => _$MusicaModelToJson(this);
}
