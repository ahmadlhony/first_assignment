// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:first_assignment/widgets/navbar/navbar_item.dart';
import 'package:flutter/material.dart';

class CustomNavbar extends StatefulWidget {
  List<NavbarItem> navbarItem;
  CustomNavbar({required this.navbarItem});
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
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(15),
        ),
      ),
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: widget.navbarItem.map((e) {
          return navbarItems(
            iconData: e.iconData,
            label: e.label,
            index: widget.navbarItem.indexOf(e),
          );
        }).toList(),
        // [
        //   navbarItems(FontAwesome.home, "Home", index: 0),
        //   navbarItems(Icons.favorite, "Favorites", index: 1),
        //   navbarItems(Icons.language_outlined, "NearBy", index: 2),
        //   navbarItems(Icons.notifications_on_outlined, "Notifications",
        //       index: 3),
        // ],
      ),
    );
  }

  Widget navbarItems(
      {required IconData iconData, required String label, required int index}) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Container(
        width: 100,
        height: double.maxFinite,
        child: SizedBox(
          width: 65,
          height: 40,
          child: Column(
            children: [
              SizedBox(
                height: 40,
                child: Stack(
                  alignment: AlignmentDirectional.center,
                  clipBehavior: Clip.none,
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
                              iconData,
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
