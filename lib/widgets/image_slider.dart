// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ImageSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10, top: 66),
      height: 240,
      child: AspectRatio(
        aspectRatio: 16 / 9,
        child: Stack(children: [
          CarouselSlider(
            items: [
              Image.asset(
                'assets/images/first.jpg',
                fit: BoxFit.cover,
              ),
              Image.asset(
                'assets/images/second.jpg',
                fit: BoxFit.cover,
              ),
              Image.asset(
                'assets/images/third.jpg',
                fit: BoxFit.cover,
              ),
            ],
            options: CarouselOptions(
              viewportFraction: 1,
              height: 400,
              aspectRatio: 16 / 9,
              enableInfiniteScroll: true,
            ),
          ),
          Positioned(
            bottom: 5,
            child: Center(
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 20,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.black,
                      radius: 5,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 4,
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(3)),
                    CircleAvatar(
                      backgroundColor: Colors.black,
                      radius: 5,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 4,
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(3)),
                    CircleAvatar(
                      backgroundColor: Colors.black,
                      radius: 5,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 4,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
