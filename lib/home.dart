import 'package:facebook/assets.dart';
import 'package:facebook/sections/buttonsection.dart';
import 'package:facebook/sections/roomsecton.dart';
import 'package:facebook/sections/statussection.dart';
import 'package:facebook/sections/storysection.dart';
import 'package:facebook/widgets/post.dart';
import 'package:flutter/material.dart';
import 'package:facebook/widgets/appbarbuttons.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    Widget thickdivider = Divider(
      thickness: 10,
      color: Colors.grey[300],
    );

    Widget thindivider = Divider(
      thickness: 1,
      color: Colors.grey[300],
    );

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Text(
            'facebook',
            style: TextStyle(
                color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 26),
          ),
          actions: [
            appbarbuttons(
                buttonaction: () {
                  print('kokkachi daa');
                },
                buttonicon: Icons.search),
            appbarbuttons(
                buttonaction: () {
                  print('anandhu vannu ');
                },
                buttonicon: Icons.messenger)
          ],
        ),
        body: ListView(
          children: [
            statussection(),
            thindivider,
            buttonsectoin(),
            thickdivider,
            roomsection(),
            thickdivider,
            const storysection(),
            thickdivider,
            Post(
              avatar: one,
              bluetick: true,
              posttext: 'CRISTY JAMES',
              subtext: '9H',
              earth: true,
              headertitle: "happy diwaali!!!",
              postimage: one1,
            ),
            Post(
              avatar: one2,
              bluetick: true,
              posttext: 'ADHARSH MM',
              subtext: '10H',
              earth: true,
              postimage: one5,
            ),
            Post(
              avatar: one1,
              subtext: '12H',
              posttext: 'ATHUL UNNIKRISHNAN',
              postimage: one7,
              bluetick: false,
            )
          ],
        ),
      ),
    );
  }
}
