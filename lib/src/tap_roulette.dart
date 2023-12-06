import 'package:flutter/material.dart';
import 'package:tap_roulette/src/home/views/tap_roulette_home_screen.dart';

class TapRoulette extends StatelessWidget {
  const TapRoulette({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tap Roulette',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const TapRouletteHomeScreen(title: 'Tap Roulette'),
    );
  }
}
