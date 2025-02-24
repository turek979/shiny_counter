import 'package:flutter/material.dart';
import 'package:shiny_counter/counter/presentation/counter_app.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    redirect();
  }

  Future<void> redirect() async {
    await Future.delayed(Duration(seconds: 2));
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) => ShinyPokemonCounter(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Shiny Counter ver 0.1'),
      ),
    );
  }
}
