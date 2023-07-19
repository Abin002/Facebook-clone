import 'package:flutter/material.dart';

class Bluetick extends StatelessWidget {
  const Bluetick({Key? key});

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.verified,
      color: Colors.blue,
      size: 16,
    );
  }
}


