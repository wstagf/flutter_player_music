// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banda_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BandaModel _$BandaModelFromJson(Map<String, dynamic> json) {
  return BandaModel(
    id: json['_id'] as String,
    nome: json['nome'] as String,
    imagem: json['imagem'] as String,
    album: json['album'] as String,
    musicas: (json['musicas'] as List)
        ?.map((e) =>
            e == null ? null : MusicaModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$BandaModelToJson(BandaModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'nome': instance.nome,
      'imagem': instance.imagem,
      'album': instance.album,
      'musicas': instance.musicas,
    };
