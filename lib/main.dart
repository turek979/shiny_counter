import 'package:flutter/material.dart';

void main() {
  runApp(ShinyPokemonTrackerApp());
}

class ShinyPokemonTrackerApp extends StatelessWidget {
  const ShinyPokemonTrackerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shiny Pokémon Tracker',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ShinyPokemonTracker(),
    );
  }
}

class ShinyPokemonTracker extends StatefulWidget {
  const ShinyPokemonTracker({super.key});

  @override
  _ShinyPokemonTrackerState createState() => _ShinyPokemonTrackerState();
}

class _ShinyPokemonTrackerState extends State<ShinyPokemonTracker> {
  List<Map<String, dynamic>> shinyPokemonList = [];

  void _addShinyEncounter() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        String pokemonName = '';
        return AlertDialog(
          title: Text('Add Shiny Encounter'),
          content: TextField(
            onChanged: (value) {
              pokemonName = value;
            },
            decoration: InputDecoration(hintText: 'Enter Pokémon Name'),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () {
                if (pokemonName.isNotEmpty) {
                  setState(() {
                    int index = shinyPokemonList.indexWhere((pokemon) =>
                        pokemon['name'].toLowerCase() ==
                        pokemonName.toLowerCase());
                    if (index != -1) {
                      shinyPokemonList[index]['count'] += 1;
                    } else {
                      shinyPokemonList.add({'name': pokemonName, 'count': 1});
                    }
                  });
                }
                Navigator.of(context).pop();
              },
              child: Text('Add'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shiny Pokémon Tracker'),
      ),
      body: shinyPokemonList.isEmpty
          ? Center(
              child: Text('No shiny Pokémon encounters yet. Add one!'),
            )
          : ListView.builder(
              itemCount: shinyPokemonList.length,
              itemBuilder: (context, index) {
                final pokemon = shinyPokemonList[index];
                return ListTile(
                  title: Text(pokemon['name']),
                  trailing: Text('Count: ${pokemon['count']}'),
                );
              },
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addShinyEncounter,
        child: Icon(Icons.add),
      ),
    );
  }
}
