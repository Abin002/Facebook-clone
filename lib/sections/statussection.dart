import 'package:facebook/assets.dart';
import 'package:facebook/widgets/avathar.dart';
import 'package:flutter/material.dart';

class statussection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading:avathar(displayimage: one1,displaystatus: false),
      title: TextField(
        decoration: InputDecoration(
          hintText: "whats on your mind ",
          hintStyle: TextStyle(
            color: Colors.black
          ),
          border: InputBorder.none
        ),
      ),
    
    );
  }
}
