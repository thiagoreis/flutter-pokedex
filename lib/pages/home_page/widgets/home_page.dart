import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pokedex/consts/consts_app.dart';
import 'package:pokedex/models/pokeapi.dart';
import 'package:pokedex/stores/pokeapi_store.dart';

import 'app_bar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    PokeApiStorage pokeApiStorage = PokeApiStorage();
    pokeApiStorage.fetchPokemonList();
    double screenWidth = MediaQuery.of(context).size.width;
    double statusWidth = MediaQuery.of(context).padding.top;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        alignment: Alignment.topCenter,
        overflow: Overflow.visible,
        children: <Widget>[
          Positioned(
            top: -(240 / 4.7),
            left: screenWidth - 240 / 1.6,
            child: Opacity(
              child: Image.asset(
                ConstsApp.blackPokeball,
                height: 240,
                width: 240,
              ),
              opacity: 0.1,
            ),
          ),
          Container(
            child: Column(
              children: <Widget>[
                Container(
                  height: statusWidth,
                ),
                AppBarHome(),
                Expanded(
                  child: Container(child: Observer(
                    builder: (BuildContext context) {
                      PokeApi _pokeApi = pokeApiStorage.pokeApi;
                      return (pokeApiStorage.pokeApi != null)
                          ? ListView.builder(
                              itemCount: _pokeApi.pokemon.length,
                              itemBuilder: (context, index) {
                                return ListTile(
                                  title: Text(_pokeApi.pokemon[index].name),
                                );
                              })
                          : Center(child: CircularProgressIndicator());
                    },
                  )),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
