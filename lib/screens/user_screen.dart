import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome_icons.dart';

class UserScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height - 3;
    final width = MediaQuery.of(context).size.width;
    final firstHight = height * 0.4;
    final secondHeight = height * 0.2;
    final thirdHeight = height * 0.2;
    final fourthHeight = height * 0.2;
    return Scaffold(
      // appBar: AppBar(),
      body: Column(
        children: [
          Container(
            color: Colors.blue[50],
            height: height * 0.4,
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                  child: Image.asset(
                    "assets/images/Erbil.jpg",
                    fit: BoxFit.cover,
                    height: (height * 0.4) * 0.6,
                    width: width,
                  ),
                ),
                Container(),
              ],
            ),
          ),
          Divider(
            height: 1,
            thickness: 1,
            color: Colors.grey,
          ),
          Container(
            color: Colors.blue[50],
            height: secondHeight,
            width: width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.all(0),
                  padding: EdgeInsets.fromLTRB(6, 3, 0, 0),
                  alignment: Alignment.centerLeft,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "ئەلبومی کارەکانم",
                        // "Hello",
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontSize: 19,
                          fontFamily: "NRT",
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: InkWell(
                          onTap: () {},
                          child: Text(
                            "زیاتر ببینە",
                            // "Hello",
                            style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontSize: 13,
                              fontFamily: "NRT",
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  // alignment: Alignment.topCenter,
                  // color: Colors.black,
                  height: 90,
                  width: width,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      albumImage(),
                      albumImage(),
                      albumImage(),
                      albumImage(),
                      albumImage(),
                      albumImage(),
                      albumImage(),
                    ],
                  ),
                )
              ],
            ),
          ),
          Divider(
            height: 1,
            thickness: 1,
            color: Colors.grey,
          ),
          Container(
            color: Colors.white,
            height: thirdHeight,
            width: width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  margin: EdgeInsets.all(0),
                  padding: EdgeInsets.fromLTRB(6, 6, 0, 0),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "دەنگدان",
                    // "Hello",
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontSize: 19,
                      fontFamily: "NRT",
                    ),
                  ),
                ),
                Container(
                  // alignment: Alignment.topCenter,
                  // color: Colors.black,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.star_outline_rounded,
                          size: 40,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.star_outline_rounded,
                          size: 40,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.star_outline_rounded,
                          size: 40,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.star_rounded,
                          size: 40,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.star_rounded,
                          size: 40,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: width / 3,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Icon(
                          Icons.check_rounded,
                        ),
                        Text(
                          "دەنگ بدە",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Theme.of(context).primaryColor),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(28.0),
                          // side: BorderSide(color: Colors.red),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Divider(
            height: 1,
            thickness: 1,
            color: Colors.grey,
          ),
          Container(
            color: Colors.white,
            height: fourthHeight,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 3,
                ),
                Contact(width: width),
                CallUs(width: width),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget albumImage() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(25)),
        child: Image.asset(
          "assets/images/cute-engineer-character-cartoon-icon-illustration-vector.jpg",
          fit: BoxFit.cover,
          height: 90,
          width: 90,
        ),
      ),
    );
  }
}

class CallUs extends StatelessWidget {
  const CallUs({
    Key? key,
    required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(15),
          ),
        ),
        height: 60,
        width: width,
        child: Icon(
          Icons.phone_in_talk_rounded,
          color: Colors.white,
          size: 50,
        ),
      ),
    );
  }
}

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
