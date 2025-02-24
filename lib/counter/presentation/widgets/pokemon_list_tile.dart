import 'package:flutter/material.dart';

class PokemonListTile extends StatelessWidget {
  const PokemonListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              Container(
                height: 75,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromARGB(242, 255, 255, 255),
                ),
                child: Image.network(
                    'https://archives.bulbagarden.net/media/upload/2/2b/Spr_3r_132.png'),
              ),
              SizedBox(
                width: 15,
              ),
              Column(
                children: [
                  Text('Ditto'),
                  Text('Pokemon Scarlet'),
                ],
              ),
            ],
          ),
          Row(
            children: [
              Column(
                children: [Text('current encounters'), Text('123')],
              ),
              Column(
                children: [Text('Odds'), Text('1/4096')],
              )
            ],
          ),
          Row(
            children: [
              TextButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.add),
                  label: Text('Count')),
              TextButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.star),
                  label: Text('Found!')),
            ],
          )
        ],
      ),
    );
  }
}
