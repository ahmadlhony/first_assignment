import 'package:first_assignment/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'package:fluttericon/font_awesome_icons.dart';

class AppDrawer extends StatefulWidget {
  @override
  State<AppDrawer> createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  // GlobalKey<SliderMenuContainerState> _key =
  //     new GlobalKey<SliderMenuContainerState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Container(
        width: MediaQuery.of(context).size.width / 2 + 5,
        child: Drawer(
          elevation: 0,
          child: Stack(
            children: [
              ListView(
                children: [
                  UserInfo(),
                  ListTile(
                    leading: Icon(
                      Icons.login,
                      color: Theme.of(context).primaryColor,
                    ),
                    title: Text(
                      "چونە ژوورەوە",
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 17,
                        fontFamily: "NRT",
                      ),
                    ),
                    onTap: () {},
                  ),
                  Divider(
                    thickness: 1,
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.group,
                      color: Theme.of(context).primaryColor,
                    ),
                    title: Text(
                      "دەربارەی ئێمە",
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 17,
                        fontFamily: "NRT",
                      ),
                    ),
                    onTap: () {},
                  ),
                  Divider(
                    thickness: 1,
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.public,
                      color: Theme.of(context).primaryColor,
                    ),
                    title: Text(
                      "پەیوەندیکردن بە ئێمە",
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 12,
                        fontFamily: "NRT",
                      ),
                    ),
                    onTap: () {},
                  ),
                  Divider(
                    thickness: 1,
                  )
                ],
              ),
              Positioned(
                bottom: 4,
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  width: MediaQuery.of(context).size.width / 2 + 5,
                  height: 60,
                  // color: Colors.black,
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
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class UserInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
      padding: EdgeInsets.all(10),
      height: 200,
      color: Theme.of(context).primaryColor,
      child: Column(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(
                "assets/images/cute-engineer-character-cartoon-icon-illustration-vector.jpg"),
            radius: 50,
          ),
          Padding(
            padding: EdgeInsets.only(top: 2),
            child: Text(
              "ئەحمەد سەمیر سەلیم",
              style: TextStyle(
                fontSize: 14,
                fontFamily: "NRT",
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(
            height: 2,
          ),
          Text(
            "ژمارەی مۆبایل: ٠٧٥٠١١١١١١١",
            style: TextStyle(
              fontSize: 14,
              fontFamily: "NRT",
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(0, 3, 6, 0),
                child: Text(
                  "عراق/هەولێر",
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: "NRT",
                    color: Colors.white,
                  ),
                ),
              ),
              Icon(
                Icons.location_pin,
                color: Colors.white,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
