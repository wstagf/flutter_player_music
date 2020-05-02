// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'musica_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MusicaModel _$MusicaModelFromJson(Map<String, dynamic> json) {
  return MusicaModel(
    id: json['_id'] as String,
    nome: json['nome'] as String,
    url: json['url'] as String,
  );
}

Map<String, dynamic> _$MusicaModelToJson(MusicaModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'nome': instance.nome,
      'url': instance.url,
    };
