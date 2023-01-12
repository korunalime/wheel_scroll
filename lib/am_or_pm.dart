import 'package:flutter/material.dart';

class AmPm extends StatelessWidget {
  final bool isItAm;

  const AmPm({super.key, required this.isItAm});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Center(
        child: Text(
          isItAm == true ? 'am' : 'pm',
          style: const TextStyle(
            fontSize: 30,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}