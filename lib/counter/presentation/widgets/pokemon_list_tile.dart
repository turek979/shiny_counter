import 'package:flutter/material.dart';

import 'package:shiny_counter/counter/presentation/widgets/pokmeon_list_tile_button.dart';
import '../../../core/configs/theme/app_colors.dart';

class PokemonListTile extends StatefulWidget {
  const PokemonListTile(
      {super.key, required this.pokemonSpecies, required this.odds});

  final String pokemonSpecies;
  final String odds;

  @override
  State<PokemonListTile> createState() => _PokemonListTileState();
}

class _PokemonListTileState extends State<PokemonListTile> {
  int currentEncounters = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: Colors.white),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: 75,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: AppColors.grey,
                ),
                child: Image.network(
                  'https://archives.bulbagarden.net/media/upload/2/2b/Spr_3r_132.png',
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.pokemonSpecies,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    'Pokemon Scarlet',
                    style: TextStyle(
                      color: Colors.black87,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Current encounters',
                      style: TextStyle(color: Colors.black87, fontSize: 16)),
                  Text(
                    '$currentEncounters',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.w600),
                  )
                ],
              ),
              Column(
                children: [
                  Text(
                    'Odds',
                    style: TextStyle(color: Colors.black87, fontSize: 16),
                  ),
                  Text(
                    widget.odds,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.w600),
                  )
                ],
              )
            ],
          ),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              PokmeonListTileButton(
                  icon: Icon(Icons.add, size: 22),
                  label: 'Count',
                  onPressed: () {
                    setState(() {
                      currentEncounters++;
                    });
                  },
                  backgroundColor: AppColors.grey,
                  iconColor: Colors.black,
                  foregroundColor: Colors.black),
              SizedBox(width: 10),
              PokmeonListTileButton(
                icon: Icon(Icons.star_rounded, size: 22),
                label: 'Found!',
                onPressed: () {},
                backgroundColor: Colors.black,
                iconColor: Colors.white,
                foregroundColor: Colors.white,
              ),
            ],
          )
        ],
      ),
    );
  }
}
