import 'package:flutter/material.dart';

class buttonsectoin extends StatelessWidget {
  Widget headerButton({
    required String buttonText,
    required IconData buttonIcon,
    required void Function() buttonAction,
    required Color buttonColor,
  }) {
    return TextButton.icon(
      onPressed: buttonAction,
      icon: Icon(buttonIcon, color: buttonColor),
      label: Text(
        buttonText,
        style: TextStyle(color: Colors.black), // Set the text color to black
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          headerButton(
            buttonText: "live",
            buttonIcon: Icons.video_call,
            buttonAction: () {
              print("go live");
            },
            buttonColor: Colors.red,
          ),
          VerticalDivider(
            thickness: 1,
            color: Colors.grey[300],
          ),
          headerButton(
            buttonText: "posts",
            buttonIcon: Icons.photo_album,
            buttonAction: () {
              print("jai kisan");
            },
            buttonColor: Colors.green,
          ),
          VerticalDivider(
            thickness: 1,
            color: Colors.grey[300],
          ),
          headerButton(
            buttonText: "chatroom",
            buttonIcon: Icons.chat,
            buttonAction: () {
              print("wow ayt");
            },
            buttonColor: Colors.blue,
          ),
        ],
      ),
      
    );
  }
}
