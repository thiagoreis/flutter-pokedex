import 'dart:convert';

import 'package:mobx/mobx.dart';
import 'package:pokedex/consts/consts_api.dart';
import 'package:pokedex/models/pokeapi.dart';
import 'package:http/http.dart' as http;

part 'pokeapi_store.g.dart';

class PokeApiStorage = _PokeApiStorageBase with _$PokeApiStorage;

abstract class _PokeApiStorageBase with Store {
  @observable
  PokeApi pokeApi;

  @action
  fetchPokemonList() {
    loadPokeAPI().then((pokeList) {
      pokeApi = pokeList;
    });
  }

  Future<PokeApi> loadPokeAPI() async {
    try {
      final response = await http.get(ConstsApi.pokeapiURL);
      var decodeJson = jsonDecode(response.body);
      return PokeApi.fromJson(decodeJson);
    } catch (error, stacktrace) {
      print("Erro ao carregar a lista");
      return null;
    }
  }
}
