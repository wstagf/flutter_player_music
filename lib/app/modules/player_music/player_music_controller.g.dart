// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player_music_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PlayerMusicController on _PlayerMusicBase, Store {
  Computed<MusicaModel> _$musicaComputed;

  @override
  MusicaModel get musica =>
      (_$musicaComputed ??= Computed<MusicaModel>(() => super.musica)).value;

  final _$bandaModelAtom = Atom(name: '_PlayerMusicBase.bandaModel');

  @override
  BandaModel get bandaModel {
    _$bandaModelAtom.context.enforceReadPolicy(_$bandaModelAtom);
    _$bandaModelAtom.reportObserved();
    return super.bandaModel;
  }

  @override
  set bandaModel(BandaModel value) {
    _$bandaModelAtom.context.conditionallyRunInAction(() {
      super.bandaModel = value;
      _$bandaModelAtom.reportChanged();
    }, _$bandaModelAtom, name: '${_$bandaModelAtom.name}_set');
  }

  final _$bandFutureAtom = Atom(name: '_PlayerMusicBase.bandFuture');

  @override
  ObservableFuture<BandaModel> get bandFuture {
    _$bandFutureAtom.context.enforceReadPolicy(_$bandFutureAtom);
    _$bandFutureAtom.reportObserved();
    return super.bandFuture;
  }

  @override
  set bandFuture(ObservableFuture<BandaModel> value) {
    _$bandFutureAtom.context.conditionallyRunInAction(() {
      super.bandFuture = value;
      _$bandFutureAtom.reportChanged();
    }, _$bandFutureAtom, name: '${_$bandFutureAtom.name}_set');
  }

  final _$faixaAtom = Atom(name: '_PlayerMusicBase.faixa');

  @override
  int get faixa {
    _$faixaAtom.context.enforceReadPolicy(_$faixaAtom);
    _$faixaAtom.reportObserved();
    return super.faixa;
  }

  @override
  set faixa(int value) {
    _$faixaAtom.context.conditionallyRunInAction(() {
      super.faixa = value;
      _$faixaAtom.reportChanged();
    }, _$faixaAtom, name: '${_$faixaAtom.name}_set');
  }

  final _$audioPlayerAtom = Atom(name: '_PlayerMusicBase.audioPlayer');

  @override
  AudioPlayer get audioPlayer {
    _$audioPlayerAtom.context.enforceReadPolicy(_$audioPlayerAtom);
    _$audioPlayerAtom.reportObserved();
    return super.audioPlayer;
  }

  @override
  set audioPlayer(AudioPlayer value) {
    _$audioPlayerAtom.context.conditionallyRunInAction(() {
      super.audioPlayer = value;
      _$audioPlayerAtom.reportChanged();
    }, _$audioPlayerAtom, name: '${_$audioPlayerAtom.name}_set');
  }

  final _$musicaTocandoAtom = Atom(name: '_PlayerMusicBase.musicaTocando');

  @override
  bool get musicaTocando {
    _$musicaTocandoAtom.context.enforceReadPolicy(_$musicaTocandoAtom);
    _$musicaTocandoAtom.reportObserved();
    return super.musicaTocando;
  }

  @override
  set musicaTocando(bool value) {
    _$musicaTocandoAtom.context.conditionallyRunInAction(() {
      super.musicaTocando = value;
      _$musicaTocandoAtom.reportChanged();
    }, _$musicaTocandoAtom, name: '${_$musicaTocandoAtom.name}_set');
  }

  final _$buscarBandaAsyncAction = AsyncAction('buscarBanda');

  @override
  Future buscarBanda(String id) {
    return _$buscarBandaAsyncAction.run(() => super.buscarBanda(id));
  }

  final _$tocarOuPausarMusicaAsyncAction = AsyncAction('tocarOuPausarMusica');

  @override
  Future<void> tocarOuPausarMusica() {
    return _$tocarOuPausarMusicaAsyncAction
        .run(() => super.tocarOuPausarMusica());
  }

  @override
  String toString() {
    final string =
        'bandaModel: ${bandaModel.toString()},bandFuture: ${bandFuture.toString()},faixa: ${faixa.toString()},audioPlayer: ${audioPlayer.toString()},musicaTocando: ${musicaTocando.toString()},musica: ${musica.toString()}';
    return '{$string}';
  }
}
