import 'package:flutter/material.dart';

class PokemonListTile extends StatelessWidget {
  const PokemonListTile({super.key});

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
                  color: Colors.grey[300],
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
                    'Ditto',
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
                  Text(
                    'Current encounters',
                    style: TextStyle(color: Colors.black87, fontSize: 16),
                  ),
                  Text(
                    '123',
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
                    '1/4096',
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
              Expanded(
                child: TextButton.icon(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.grey[300],
                      iconColor: Colors.black,
                      foregroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {},
                    icon: Icon(Icons.add),
                    label: Text('Count')),
              ),
              SizedBox(width: 10),
              Expanded(
                child: TextButton.icon(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.black,
                      iconColor: Colors.white,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {},
                    icon: Icon(Icons.star),
                    label: Text('Found!')),
              ),
            ],
          )
        ],
      ),
    );
  }
}
