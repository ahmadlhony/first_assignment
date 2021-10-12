// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'package:first_assignment/widgets/categories_grid.dart';
import 'package:first_assignment/widgets/custom_navbar.dart';
import 'package:first_assignment/widgets/image_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Theme.of(context).backgroundColor,
      drawer: Drawer(),
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(15),
          ),
        ),
        title: Center(
          child: Icon(
            Icons.location_pin,
            color: Colors.white,
            size: 30,
          ),
        ),
        leading: Builder(builder: (context) {
          return IconButton(
            icon: Icon(
              Icons.sort,
              size: 30,
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          );
        }),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              size: 30,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ImageSlider(),
            CategoryGrid("Best Of Month"),
            Divider(thickness: 0.2),
            CategoryGrid("Latest"),
            Divider(thickness: 0.2),
            CategoryGrid("Featured"),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
      bottomNavigationBar: CustomNavbar(),
    );
  }
}
