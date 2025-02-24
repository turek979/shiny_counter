import 'package:flutter/material.dart';

import 'package:shiny_counter/core/splash_screen.dart';

void main() {
  runApp(ShinyPokemonTrackerApp());
}

class ShinyPokemonTrackerApp extends StatelessWidget {
  const ShinyPokemonTrackerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shiny Pokémon Tracker',
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
