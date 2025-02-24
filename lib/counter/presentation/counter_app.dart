import 'package:flutter/material.dart';

class ShinyPokemonCounter extends StatefulWidget {
  const ShinyPokemonCounter({super.key});

  @override
  State<ShinyPokemonCounter> createState() => _ShinyPokemonCounterState();
}

class _ShinyPokemonCounterState extends State<ShinyPokemonCounter> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('Shiny Pokemon Counter')),
    );
  }
}
