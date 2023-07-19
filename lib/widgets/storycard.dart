import 'package:facebook/widgets/appbarbuttons.dart';
import 'package:facebook/widgets/avathar.dart';
import 'package:flutter/material.dart';

class storycard extends StatelessWidget {
  final String storyimage;
  final bool profileOradd;
  final String bottomline;
  final String Avathar;

  storycard(
      {required this.storyimage,
      required this.Avathar,
      required this.bottomline,
      this.profileOradd = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10, top: 10, bottom: 10),
      width: 150,
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: AssetImage(storyimage),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 5,
            child: profileOradd
                ? avathar(
                    displayimage: Avathar,
                    displaystatus: false,
                    ring: true,
                  )
                : appbarbuttons(
                    buttonaction: () {
                      print("hello");
                    },
                    buttonicon: Icons.add),
          ),
          Positioned(
              left: 5,
              bottom: 5,
              child: Text(
                bottomline,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 12),
              ))
        ],
      ),
    );
  }
}
