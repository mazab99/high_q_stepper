import 'package:flutter/material.dart';

class StepperCircle extends StatelessWidget {
  final double size;
  final Color color;

  const StepperCircle({super.key, required this.size, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(0),
      margin: const EdgeInsets.all(0),
      height: size,
      width: size,
      decoration:
          BoxDecoration(shape: BoxShape.circle, color: color, boxShadow: [
        BoxShadow(
          color: color.withOpacity(0.5),
          spreadRadius: 2,
          blurRadius: 4,
        )
      ]),
    );
  }
}
