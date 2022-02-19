// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:first_assignment/dummy_data.dart';
import 'package:first_assignment/widgets/home_screen_categories/categories_grid.dart';
import 'package:first_assignment/widgets/navbar/custom_navbar.dart';
import 'package:first_assignment/widgets/image_slider.dart';
import 'package:first_assignment/widgets/navbar/navbar_item.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import '../widgets/custom_appbar.dart';

class HomeScreen extends StatelessWidget {
  Function drawerHandler;
  HomeScreen(this.drawerHandler);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // extendBodyBehindAppBar: true,
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: CustomAppBar(drawerHandler: drawerHandler),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ImageSlider(
              imageList: [
                'assets/images/first.jpg',
                'assets/images/second.jpg',
                'assets/images/third.jpg'
              ],
            ),
            CategoryGrid(
              categoryName: "Best Of Month",
              categoryItems: DummyData.bestOfMonth,
            ),
            Divider(thickness: 0.2),
            CategoryGrid(
                categoryName: "Latest", categoryItems: DummyData.latest),
            Divider(thickness: 0.2),
            CategoryGrid(
              categoryName: "Featured",
              categoryItems: DummyData.featured,
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
      bottomNavigationBar: CustomNavbar(
        navbarItem: [
          NavbarItem(label: "Home", iconData: FontAwesome.home),
          NavbarItem(label: "Favorites", iconData: Icons.favorite),
          NavbarItem(label: "NearBy", iconData: Icons.language_outlined),
          NavbarItem(
              label: "Notifications",
              iconData: Icons.notifications_on_outlined),
        ],
      ),
    );
  }
}
