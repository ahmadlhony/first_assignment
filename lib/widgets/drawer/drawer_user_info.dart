import 'package:flutter/material.dart';

class DrawerUserInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
      padding: EdgeInsets.fromLTRB(10, 30, 10, 10),
      height: 300,
      color: Theme.of(context).primaryColor,
      child: Column(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(
                "assets/images/cute-engineer-character-cartoon-icon-illustration-vector.jpg"),
            radius: 70,
          ),
          Padding(
            padding: EdgeInsets.only(top: 15),
            child: Text(
              "ئەحمەد سەمیر سەلیم",
              style: TextStyle(
                fontSize: 16,
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
                    fontSize: 16,
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
