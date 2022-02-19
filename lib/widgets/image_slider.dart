// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ImageSlider extends StatefulWidget {
  final List<String> imageList;
  ImageSlider({required this.imageList});

  @override
  State<ImageSlider> createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  var selectedItem = 0;
  bool isSelected(int index) {
    return selectedItem == index;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      height: 240,
      child: AspectRatio(
        aspectRatio: 16 / 9,
        child: Stack(children: [
          CarouselSlider(
            items: widget.imageList.map((e) {
              return Image.asset(
                e,
                fit: BoxFit.cover,
              );
            }).toList(),
            options: CarouselOptions(
                viewportFraction: 1,
                height: 400,
                aspectRatio: 16 / 9,
                enableInfiniteScroll: true,
                onPageChanged: (index, reason) {
                  setState(() {
                    selectedItem = index;
                  });
                }),
          ),
          Positioned(
            bottom: 5,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 20,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: widget.imageList.map((e) {
                      return Container(
                        height: 10,
                        width: 10,
                        margin: EdgeInsets.symmetric(horizontal: 3),
                        decoration: BoxDecoration(
                          border: Border.all(width: 1, color: Colors.black),
                          color: isSelected(widget.imageList.indexOf(e))
                              ? Theme.of(context).primaryColor
                              : Colors.white,
                          shape: BoxShape.circle,
                        ),
                      );
                    }).toList()),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
