import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key, required this.colors});

  final List<Color> colors;
  final startAlignment = Alignment.topLeft;
  final endAlignment = Alignment.bottomRight;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: startAlignment, end: endAlignment, colors: colors),
      ),
      child: const Center(child: DiceRoller()),
    );
  }
}
