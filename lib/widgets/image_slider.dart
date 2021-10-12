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
        child: CarouselSlider(
          items: [
            Image.asset(
              'assets/images/first.jpg',
              fit: BoxFit.cover,
            ),
            Image.asset('assets/images/second.jpg'),
            Image.asset('assets/images/third.jpg'),
          ],
          options: CarouselOptions(
            viewportFraction: 1,
            height: 400,
            aspectRatio: 16 / 9,
            enableInfiniteScroll: true,
          ),
        ),
      ),
    );
  }
}
