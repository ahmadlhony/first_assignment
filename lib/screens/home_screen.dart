// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'package:first_assignment/widgets/categories_grid.dart';
import 'package:first_assignment/widgets/category_item.dart';
import 'package:first_assignment/widgets/navbar/custom_navbar.dart';
import 'package:first_assignment/widgets/image_slider.dart';
import 'package:first_assignment/widgets/navbar/navbar_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:fluttericon/font_awesome_icons.dart';

class HomeScreen extends StatelessWidget {
  Function drawerHandler;
  HomeScreen(this.drawerHandler);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).primaryColor,
        // shape: RoundedRectangleBorder(
        //   borderRadius: BorderRadius.vertical(
        //     bottom: Radius.circular(15),
        //   ),
        // ),
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
              drawerHandler();
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
            ImageSlider(
              imageList: [
                'assets/images/first.jpg',
                'assets/images/second.jpg',
                'assets/images/third.jpg'
              ],
            ),
            CategoryGrid(
              categoryName: "Best Of Month",
              categoryItems: [
                CategoryItem(
                  name: "ئەحمەد سەمیر سەلیم",
                  phoneNumber: "٠٧٥٠١١١١١١١",
                  career: "ئەندازیار",
                  imagePath:
                      'assets/images/cute-engineer-character-cartoon-icon-illustration-vector.jpg',
                ),
                CategoryItem(
                  name: "ئەحمەد محەمەد رەئوف",
                  phoneNumber: "٠٧٥١١١٢٨٤٦٤",
                  career: "معلاج طبیعی",
                  imagePath:
                      'assets/images/cute-engineer-character-cartoon-icon-illustration-vector.jpg',
                ),
                CategoryItem(
                  name: "ئەحمەد سەمیر سەلیم",
                  phoneNumber: "٠٧٥٠١١١١١١١",
                  career: "ئەندازیار",
                  imagePath:
                      'assets/images/cute-engineer-character-cartoon-icon-illustration-vector.jpg',
                ),
              ],
            ),
            Divider(thickness: 0.2),
            CategoryGrid(
              categoryName: "Latest",
              categoryItems: [
                CategoryItem(
                  name: "ئەحمەد سەمیر سەلیم",
                  phoneNumber: "٠٧٥٠١١١١١١١",
                  career: "ئەندازیار",
                  imagePath:
                      'assets/images/cute-engineer-character-cartoon-icon-illustration-vector.jpg',
                ),
                CategoryItem(
                  name: "ئەحمەد سەمیر سەلیم",
                  phoneNumber: "٠٧٥٠١١١١١١١",
                  career: "ئەندازیار",
                  imagePath:
                      'assets/images/cute-engineer-character-cartoon-icon-illustration-vector.jpg',
                ),
                CategoryItem(
                  name: "ئەحمەد سەمیر سەلیم",
                  phoneNumber: "٠٧٥٠١١١١١١١",
                  career: "ئەندازیار",
                  imagePath:
                      'assets/images/cute-engineer-character-cartoon-icon-illustration-vector.jpg',
                ),
              ],
            ),
            Divider(thickness: 0.2),
            CategoryGrid(
              categoryName: "Featured",
              categoryItems: [
                CategoryItem(
                  name: "ئەحمەد سەمیر سەلیم",
                  phoneNumber: "٠٧٥٠١١١١١١١",
                  career: "ئەندازیار",
                  imagePath:
                      'assets/images/cute-engineer-character-cartoon-icon-illustration-vector.jpg',
                ),
                CategoryItem(
                  name: "ئەحمەد سەمیر سەلیم",
                  phoneNumber: "٠٧٥٠١١١١١١١",
                  career: "ئەندازیار",
                  imagePath:
                      'assets/images/cute-engineer-character-cartoon-icon-illustration-vector.jpg',
                ),
                CategoryItem(
                  name: "ئەحمەد سەمیر سەلیم",
                  phoneNumber: "٠٧٥٠١١١١١١١",
                  career: "ئەندازیار",
                  imagePath:
                      'assets/images/cute-engineer-character-cartoon-icon-illustration-vector.jpg',
                ),
              ],
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
