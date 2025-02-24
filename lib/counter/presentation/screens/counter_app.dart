import 'package:flutter/material.dart';

import 'package:shiny_counter/counter/presentation/widgets/pokemon_list_tile.dart';

class ShinyPokemonCounter extends StatelessWidget {
  const ShinyPokemonCounter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(242, 255, 255, 255),
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
              label: Text('New Hunt'),
              icon: Icon(Icons.add),
            ),
          )
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [PokemonListTile()],
          ),
        ),
      ),
    );
  }
}
