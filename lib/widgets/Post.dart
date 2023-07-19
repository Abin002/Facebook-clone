
import 'package:facebook/widgets/avathar.dart';
import 'package:flutter/material.dart';
import 'package:facebook/widgets/bluetick.dart';

// ignore: must_be_immutable
class Post extends StatelessWidget {
  final String avatar;
  final bool bluetick;
  final String subtext;
  final String posttext;
  final bool earth;
  final String headertitle;
  final String postimage;

  Post(
      {required this.avatar,
      this.bluetick = false,
      required this.subtext,
      required this.posttext,
      this.earth = false,
      this.headertitle = "",
      required this.postimage});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          postheader(),
          posttitlesection(),
          postImage(),
          postfooter(),
          thindivider,
          postdownbuttons(context),
          thindivider
        ]
      ),
    );
  }

  Widget postheader() {
    return ListTile(
      leading: avathar(
        displayimage: avatar,
        displaystatus: false,
      ),
      title: Row(
        children: [
          Text(
            posttext,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            width: 4,
          ),
          if (bluetick == true) Bluetick(),
        ],
      ),
      subtitle: Row(
        children: [
          Text(subtext),
          SizedBox(
            width: 4,
          ),
          if (earth == true)
            Icon(
              Icons.public,
              size: 17,
            ),
        ],
      ),
      trailing: IconButton(
          onPressed: () {
            print("superdaa");
          },
          icon: const Icon(Icons.more_horiz)),
    );
  }

  Widget posttitlesection() {
    return Container(
      child: Text(headertitle),
      margin: EdgeInsets.only(bottom: 10),
    );
  }

  Widget postImage() {
    return Container(
      margin: EdgeInsets.only(bottom: 2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(9),
        image: DecorationImage(
          image: AssetImage(postimage),
          fit: BoxFit.cover,
        ),
      ),
      height: 500,
      width: double.infinity,
    );
  }

  Widget postfooter() {
    return ListTile(
      leading: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.thumb_up,
            color: Colors.blue,
          ),
          SizedBox(
            width: 4,
          ),
          Text(
            "20K",
            style:
                TextStyle(fontWeight: FontWeight.bold, color: Colors.black54),
          )
        ],
      ),
    );
  }
  Widget headerButton({
    required String buttonText,
    required IconData buttonIcon,
    required void Function() buttonAction,
    required Color buttonColor,
  }) {
    return Container(
      child: TextButton.icon(
        onPressed: buttonAction,
        icon: Icon(buttonIcon, color: buttonColor),
        label: Text(
          buttonText,
          style: TextStyle(color: Colors.black), // Set the text color to black
        ),
      ),
    );
  }

 Widget thindivider = Divider(
      thickness: 1,
      color: Colors.grey[300],
    );
  Widget postdownbuttons(BuildContext context) {
    return Container(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          headerButton(
            buttonText: "like",
            buttonIcon: Icons.thumb_up,
            buttonAction: () {
              print("go live");
            },
            buttonColor: Color.fromARGB(97, 79, 79, 79),
          ),
          VerticalDivider(
            thickness: 1,
            color: Colors.grey[300],
          ),
          headerButton(
            buttonText: "comment",
            buttonIcon: Icons.comment,
            buttonAction: () {
              print("jai kisan");
            },
            buttonColor: Color.fromARGB(97, 79, 79, 79),
          ),
          VerticalDivider(
            thickness: 1,
            color: Colors.grey[300],
          ),
          headerButton(
            buttonText: "share",
            buttonIcon: Icons.share,
            buttonAction: () {
              print("wow ayt");
            },
            buttonColor: Color.fromARGB(97, 79, 79, 79),
          ),
        ],
      ),
      
    );
  }

}

