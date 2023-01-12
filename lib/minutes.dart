import 'package:flutter/material.dart';

class Minutes extends StatelessWidget {
  int mins;

  Minutes({super.key, required this.mins});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Center(
        child: Text( 
          mins < 10 ? '0$mins' : mins.toString(),
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
