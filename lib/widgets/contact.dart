import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome_icons.dart';

class Contact extends StatelessWidget {
  const Contact({
    Key? key,
    required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 10,
      ),
      width: width,
      height: 60,

      // color: Colors.black,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            child: CircleAvatar(
              radius: 25,
              backgroundColor: Theme.of(context).primaryColor,
              child: Icon(
                Icons.facebook_sharp,
                size: 35,
                color: Colors.white,
              ),
            ),
            onTap: () {},
          ),
          GestureDetector(
            child: CircleAvatar(
              radius: 25,
              backgroundColor: Theme.of(context).primaryColor,
              child: Icon(
                FontAwesome.instagram,
                size: 35,
                color: Colors.white,
              ),
            ),
            onTap: () {},
          ),
          GestureDetector(
            child: CircleAvatar(
              radius: 25,
              backgroundColor: Theme.of(context).primaryColor,
              child: Icon(
                FontAwesome.snapchat,
                size: 35,
                color: Colors.white,
              ),
            ),
            onTap: () {},
          ),
          GestureDetector(
            child: CircleAvatar(
              radius: 25,
              backgroundColor: Theme.of(context).primaryColor,
              child: Icon(
                Icons.music_note_outlined,
                size: 35,
                color: Colors.white,
              ),
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
