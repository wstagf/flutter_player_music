// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeBase, Store {
  final _$bandasFutureAtom = Atom(name: '_HomeBase.bandasFuture');

  @override
  ObservableFuture<List<BandaModel>> get bandasFuture {
    _$bandasFutureAtom.context.enforceReadPolicy(_$bandasFutureAtom);
    _$bandasFutureAtom.reportObserved();
    return super.bandasFuture;
  }

  @override
  set bandasFuture(ObservableFuture<List<BandaModel>> value) {
    _$bandasFutureAtom.context.conditionallyRunInAction(() {
      super.bandasFuture = value;
      _$bandasFutureAtom.reportChanged();
    }, _$bandasFutureAtom, name: '${_$bandasFutureAtom.name}_set');
  }

  final _$_HomeBaseActionController = ActionController(name: '_HomeBase');

  @override
  void buscartodas() {
    final _$actionInfo = _$_HomeBaseActionController.startAction();
    try {
      return super.buscartodas();
    } finally {
      _$_HomeBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string = 'bandasFuture: ${bandasFuture.toString()}';
    return '{$string}';
  }
}
