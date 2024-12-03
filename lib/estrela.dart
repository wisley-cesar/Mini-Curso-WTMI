import 'package:flutter/material.dart';

class Estrela extends StatelessWidget {
  final Color color;
  const Estrela({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.star,
      color: color,
      size: 15,
    );
  }
}
