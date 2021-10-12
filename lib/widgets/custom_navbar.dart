// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome_icons.dart';

class CustomNavbar extends StatefulWidget {
  @override
  State<CustomNavbar> createState() => _CustomNavbarState();
}

class _CustomNavbarState extends State<CustomNavbar> {
  var selectedIndex = 0;
  bool _isSelected(int index) {
    return selectedIndex == index;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(15),
        ),
      ),
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buildContainerBottomNav(FontAwesome.home, "Home", index: 0),
          buildContainerBottomNav(Icons.favorite, "Favorites", index: 1),
          buildContainerBottomNav(Icons.language_outlined, "NearBy", index: 2),
          buildContainerBottomNav(
              Icons.notifications_on_outlined, "Notifications",
              index: 3),
        ],
      ),
    );
  }

  Widget buildContainerBottomNav(IconData icon, String label, {int index = 0}) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Container(
        width: 90,
        height: double.maxFinite,
        child: SizedBox(
          width: 60,
          height: 40,
          child: Column(
            children: [
              SizedBox(
                height: 40,
                child: Stack(
                  alignment: AlignmentDirectional.center,
                  overflow: Overflow.visible,
                  children: [
                    Positioned(
                      top: _isSelected(index) ? -25 : 0,
                      child: CircleAvatar(
                        radius: _isSelected(index) ? 25 : 25 * 0.7,
                        backgroundColor: _isSelected(index)
                            ? Theme.of(context).backgroundColor
                            : Theme.of(context).primaryColor,
                        child: SizedBox(
                          width: 42,
                          height: _isSelected(index) ? 42 : 21,
                          child: CircleAvatar(
                            backgroundColor: Theme.of(context).primaryColor,
                            radius: 18,
                            child: Icon(
                              icon,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Center(
                child: Text(
                  label,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: _isSelected(index) ? 13 : 12,
                    fontWeight: _isSelected(index)
                        ? FontWeight.bold
                        : FontWeight.normal,
                    color: Colors.white,
                    letterSpacing: _isSelected(index) ? 1.1 : 1.0,
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
