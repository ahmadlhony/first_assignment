import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome_icons.dart';

class DrawerBottomSocialMediaTile extends StatelessWidget {
  const DrawerBottomSocialMediaTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 10,
      ),
      width: MediaQuery.of(context).size.width / 2 + 5,
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            child: CircleAvatar(
              radius: 22,
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
              radius: 22,
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
              radius: 22,
              backgroundColor: Theme.of(context).primaryColor,
              child: Icon(
                FontAwesome.snapchat,
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
