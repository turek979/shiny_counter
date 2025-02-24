import 'package:flutter/material.dart';

import 'package:shiny_counter/counter/presentation/widgets/pokemon_list_tile.dart';

class ShinyPokemonCounter extends StatelessWidget {
  const ShinyPokemonCounter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
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
              icon: Icon(
                Icons.add,
                size: 20,
              ),
            ),
          ),
          // Padding(
          //     padding: const EdgeInsets.only(right: 8),
          //     child: TextButton(
          //       style: TextButton.styleFrom(
          //           backgroundColor: Colors.black,
          //           iconColor: Colors.white,
          //           foregroundColor: Colors.white),
          //       onPressed: () {},
          //       child: Row(
          //         children: [
          //           Text(
          //             String.fromCharCode(Icons.add.codePoint),
          //             style: TextStyle(
          //                 color: Colors.white,
          //                 fontSize: 16,
          //                 fontWeight: FontWeight.w600),
          //           ),
          //           SizedBox(width: 5),
          //           Text(
          //             'New Hunt',
          //             style: TextStyle(
          //                 color: Colors.white,
          //                 fontSize: 16,
          //                 fontWeight: FontWeight.w600),
          //           ),
          //         ],
          //       ),
          //     )),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            for (int i = 0; i < 10; i++) PokemonListTile(),
          ],
        ),
      ),
    );
  }
}
