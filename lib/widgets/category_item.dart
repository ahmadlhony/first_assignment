// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  String name;
  String phoneNumber;
  String career;
  CategoryItem(this.name, this.phoneNumber, this.career);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      height: 150,
      width: 150,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(25)),
            child: Image.asset(
              'assets/images/cute-engineer-character-cartoon-icon-illustration-vector.jpg',
              height: 150,
              width: 150,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(15),
                  ),
                ),
                width: 150,
                height: 60,
                child: Column(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 2),
                      child: Text(
                        name,
                        style: TextStyle(fontSize: 11, fontFamily: "NRT"),
                      ),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      "ژمارەی مۆبایل: $phoneNumber",
                      style: TextStyle(fontSize: 11, fontFamily: "NRT"),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      "پیشە: $career",
                      style: TextStyle(fontSize: 11, fontFamily: "NRT"),
                    ),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
