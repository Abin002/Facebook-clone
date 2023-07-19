import 'package:facebook/assets.dart';
import 'package:flutter/material.dart';
import 'package:facebook/widgets/storycard.dart';

class storysection extends StatelessWidget {
  const storysection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          storycard(
            storyimage: one1,
            profileOradd: false,
            bottomline: 'ADD TO STORY',
            Avathar: one,
          ),
          storycard(
            storyimage: one2,
            profileOradd: true,
            bottomline: 'CRISTY JAMES',
            Avathar: one,
          ),
          storycard(
            storyimage: one3,
            profileOradd: true,
            bottomline: 'ATHUL UNNIKRISHNAN',
            Avathar: one1,
          ),
          storycard(
            storyimage: one4,
            profileOradd: true,
            bottomline: 'ADHARSH MM ',
            Avathar: one2,
          ),
          storycard(
            storyimage: one5,
            profileOradd: true,
            bottomline: 'RIGIL RENJI',
            Avathar: one3,
          ),
          storycard(
            storyimage: one6,
            profileOradd: true,
            bottomline: 'ANANDHU',
            Avathar: one4,
          ),
        ],
      ),
    );
  }
}
