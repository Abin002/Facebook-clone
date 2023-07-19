import 'package:flutter/material.dart';

class appbarbuttons extends StatelessWidget {
  final IconData buttonicon;
  final void Function() buttonaction;

  appbarbuttons({required this.buttonaction, required this.buttonicon});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        shape: BoxShape.circle,
      ),
      child: IconButton(
          onPressed: buttonaction,
          icon: Icon(
           buttonicon,
            color: Colors.black,
            size: 23,
          )),
    );
  }
}
