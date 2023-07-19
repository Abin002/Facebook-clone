import 'package:facebook/assets.dart';
import 'package:facebook/widgets/avathar.dart';
import 'package:flutter/material.dart';

class roomsection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(10),
        children: [
          
          createroombutton(),
         
          avathar(displayimage: one1,displaystatus: true),
          avathar(displayimage: one2,displaystatus: true),
          avathar(displayimage: one3,displaystatus: true),
          avathar(displayimage: one4,displaystatus: true ),
          avathar(displayimage: one5,displaystatus: true),
          avathar(displayimage: one6,displaystatus: true),
          avathar(displayimage: one7,displaystatus: true),
          
        ],
      ),
    );
  }
}

Widget createroombutton() {
  return OutlinedButton.icon(
    onPressed: () {
      print('sususuus');
    },
    icon: Icon(
      Icons.video_call_outlined,
      color: Colors.pink,
    ),
    label: Text(
      "Create\nRoom",
      maxLines: 2,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.blue,
      ),
    ),
    style: OutlinedButton.styleFrom(
      shape: StadiumBorder(),
      side: BorderSide(
        color: const Color.fromARGB(255, 155, 192, 255),
        width: 2,
      ),
    ),
  );
}
