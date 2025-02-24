import 'package:flutter/material.dart';

import 'package:shiny_counter/core/configs/theme/app_colors.dart';
import 'package:shiny_counter/counter/presentation/widgets/pokemon_list_tile.dart';
import 'package:shiny_counter/counter/data/models/pokemon_counter_model.dart';

class ShinyPokemonCounter extends StatefulWidget {
  const ShinyPokemonCounter({super.key});

  @override
  State<ShinyPokemonCounter> createState() => _ShinyPokemonCounterState();
}

class _ShinyPokemonCounterState extends State<ShinyPokemonCounter> {
  final List<PokemonCounterModel> pokemonHuntList = [
    PokemonCounterModel(pokemonSpecies: 'ditto', odds: '1/4096'),
    PokemonCounterModel(pokemonSpecies: 'eevee', odds: '1/8192'),
  ];

  final int index = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.grey,
      appBar: AppBar(
        title: Text(
          'Shiny Hunter',
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: TextButton.icon(
              style: TextButton.styleFrom(
                  backgroundColor: Colors.black,
                  iconColor: Colors.white,
                  foregroundColor: Colors.white),
              onPressed: () {},
              label: Text(
                'New Hunt',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
              ),
              icon: Icon(Icons.add, size: 22),
            ),
          ),
        ],
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(20),
        itemCount: pokemonHuntList.length,
        itemBuilder: (BuildContext context, index) {
          return PokemonListTile(
            pokemonSpecies: pokemonHuntList[index].pokemonSpecies,
            odds: pokemonHuntList[index].odds,
          );
        },
        // child: Column(
        //   children: [
        //     for (int i = 0; i < 1; i++) PokemonListTile(),
        //   ],
        // ),
      ),
    );
  }
}
