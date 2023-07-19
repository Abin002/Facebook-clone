import 'package:flutter/material.dart';

class avathar extends StatelessWidget {
  final String displayimage;
  final bool displaystatus;
  final bool ring;

  avathar({required this.displayimage, required this.displaystatus, this.ring = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 4),
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: ring ? Border.all(color: Colors.blueAccent, width: 2) : null,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.asset(
                displayimage,
                width: 50,
                height: 50,
                fit: BoxFit.cover,
              ),
            ),
          ),
          displaystatus
              ? Positioned(
                  right: 0,
                  bottom: 0,
                  child: Container(
                    width: 15,
                    height: 15,
                    decoration: BoxDecoration(
                      color: Colors.greenAccent,
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.white,
                        width: 2,
                      ),
                    ),
                  ),
                )
              : SizedBox(),
        ],
      ),
    );
  }
}
