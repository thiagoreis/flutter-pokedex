// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokeapi_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PokeApiStorage on _PokeApiStorageBase, Store {
  final _$pokeApiAtom = Atom(name: '_PokeApiStorageBase.pokeApi');

  @override
  PokeApi get pokeApi {
    _$pokeApiAtom.context.enforceReadPolicy(_$pokeApiAtom);
    _$pokeApiAtom.reportObserved();
    return super.pokeApi;
  }

  @override
  set pokeApi(PokeApi value) {
    _$pokeApiAtom.context.conditionallyRunInAction(() {
      super.pokeApi = value;
      _$pokeApiAtom.reportChanged();
    }, _$pokeApiAtom, name: '${_$pokeApiAtom.name}_set');
  }

  final _$_PokeApiStorageBaseActionController =
      ActionController(name: '_PokeApiStorageBase');

  @override
  dynamic fetchPokemonList() {
    final _$actionInfo = _$_PokeApiStorageBaseActionController.startAction();
    try {
      return super.fetchPokemonList();
    } finally {
      _$_PokeApiStorageBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string = 'pokeApi: ${pokeApi.toString()}';
    return '{$string}';
  }
}
