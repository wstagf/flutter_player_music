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
  Computed<String> _$tempoTotalComputed;

  @override
  String get tempoTotal =>
      (_$tempoTotalComputed ??= Computed<String>(() => super.tempoTotal)).value;
  Computed<String> _$tempoProgredidoComputed;

  @override
  String get tempoProgredido => (_$tempoProgredidoComputed ??=
          Computed<String>(() => super.tempoProgredido))
      .value;
  Computed<bool> _$existeProximaMusicaComputed;

  @override
  bool get existeProximaMusica => (_$existeProximaMusicaComputed ??=
          Computed<bool>(() => super.existeProximaMusica))
      .value;
  Computed<bool> _$existeAnteriorMusicaComputed;

  @override
  bool get existeAnteriorMusica => (_$existeAnteriorMusicaComputed ??=
          Computed<bool>(() => super.existeAnteriorMusica))
      .value;

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

  final _$duracaoMusicaAtom = Atom(name: '_PlayerMusicBase.duracaoMusica');

  @override
  Duration get duracaoMusica {
    _$duracaoMusicaAtom.context.enforceReadPolicy(_$duracaoMusicaAtom);
    _$duracaoMusicaAtom.reportObserved();
    return super.duracaoMusica;
  }

  @override
  set duracaoMusica(Duration value) {
    _$duracaoMusicaAtom.context.conditionallyRunInAction(() {
      super.duracaoMusica = value;
      _$duracaoMusicaAtom.reportChanged();
    }, _$duracaoMusicaAtom, name: '${_$duracaoMusicaAtom.name}_set');
  }

  final _$tempoDaMusicaAtom = Atom(name: '_PlayerMusicBase.tempoDaMusica');

  @override
  Duration get tempoDaMusica {
    _$tempoDaMusicaAtom.context.enforceReadPolicy(_$tempoDaMusicaAtom);
    _$tempoDaMusicaAtom.reportObserved();
    return super.tempoDaMusica;
  }

  @override
  set tempoDaMusica(Duration value) {
    _$tempoDaMusicaAtom.context.conditionallyRunInAction(() {
      super.tempoDaMusica = value;
      _$tempoDaMusicaAtom.reportChanged();
    }, _$tempoDaMusicaAtom, name: '${_$tempoDaMusicaAtom.name}_set');
  }

  final _$percentProgredidoAtom =
      Atom(name: '_PlayerMusicBase.percentProgredido');

  @override
  double get percentProgredido {
    _$percentProgredidoAtom.context.enforceReadPolicy(_$percentProgredidoAtom);
    _$percentProgredidoAtom.reportObserved();
    return super.percentProgredido;
  }

  @override
  set percentProgredido(double value) {
    _$percentProgredidoAtom.context.conditionallyRunInAction(() {
      super.percentProgredido = value;
      _$percentProgredidoAtom.reportChanged();
    }, _$percentProgredidoAtom, name: '${_$percentProgredidoAtom.name}_set');
  }

  final _$duracaoMusicaEmSegundosAtom =
      Atom(name: '_PlayerMusicBase.duracaoMusicaEmSegundos');

  @override
  int get duracaoMusicaEmSegundos {
    _$duracaoMusicaEmSegundosAtom.context
        .enforceReadPolicy(_$duracaoMusicaEmSegundosAtom);
    _$duracaoMusicaEmSegundosAtom.reportObserved();
    return super.duracaoMusicaEmSegundos;
  }

  @override
  set duracaoMusicaEmSegundos(int value) {
    _$duracaoMusicaEmSegundosAtom.context.conditionallyRunInAction(() {
      super.duracaoMusicaEmSegundos = value;
      _$duracaoMusicaEmSegundosAtom.reportChanged();
    }, _$duracaoMusicaEmSegundosAtom,
        name: '${_$duracaoMusicaEmSegundosAtom.name}_set');
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

  final _$monitorarProgressoDaMusicaAsyncAction =
      AsyncAction('monitorarProgressoDaMusica');

  @override
  Future<void> monitorarProgressoDaMusica(Duration d) {
    return _$monitorarProgressoDaMusicaAsyncAction
        .run(() => super.monitorarProgressoDaMusica(d));
  }

  final _$_PlayerMusicBaseActionController =
      ActionController(name: '_PlayerMusicBase');

  @override
  void calcPercentProgredido() {
    final _$actionInfo = _$_PlayerMusicBaseActionController.startAction();
    try {
      return super.calcPercentProgredido();
    } finally {
      _$_PlayerMusicBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic irParaTempoDaMusica(double value) {
    final _$actionInfo = _$_PlayerMusicBaseActionController.startAction();
    try {
      return super.irParaTempoDaMusica(value);
    } finally {
      _$_PlayerMusicBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void pararMusica() {
    final _$actionInfo = _$_PlayerMusicBaseActionController.startAction();
    try {
      return super.pararMusica();
    } finally {
      _$_PlayerMusicBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void proximaMusica() {
    final _$actionInfo = _$_PlayerMusicBaseActionController.startAction();
    try {
      return super.proximaMusica();
    } finally {
      _$_PlayerMusicBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void musicaAnterior() {
    final _$actionInfo = _$_PlayerMusicBaseActionController.startAction();
    try {
      return super.musicaAnterior();
    } finally {
      _$_PlayerMusicBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'bandaModel: ${bandaModel.toString()},bandFuture: ${bandFuture.toString()},faixa: ${faixa.toString()},audioPlayer: ${audioPlayer.toString()},musicaTocando: ${musicaTocando.toString()},duracaoMusica: ${duracaoMusica.toString()},tempoDaMusica: ${tempoDaMusica.toString()},percentProgredido: ${percentProgredido.toString()},duracaoMusicaEmSegundos: ${duracaoMusicaEmSegundos.toString()},musica: ${musica.toString()},tempoTotal: ${tempoTotal.toString()},tempoProgredido: ${tempoProgredido.toString()},existeProximaMusica: ${existeProximaMusica.toString()},existeAnteriorMusica: ${existeAnteriorMusica.toString()}';
    return '{$string}';
  }
}
