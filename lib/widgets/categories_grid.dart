// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, must_be_immutable

import 'package:flutter/material.dart';

class CategoryGrid extends StatelessWidget {
  var categoryName;
  List<Widget> categoryItems;
  CategoryGrid({required this.categoryName, required this.categoryItems});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            height: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Text(
                  categoryName,
                  style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.w900,
                      fontSize: 18),
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    "More",
                    style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.w400,
                        fontSize: 14),
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 180,
            child: ListView.builder(
              itemCount: categoryItems.length,
              itemBuilder: (BuildContext ctx, int index) {
                return (categoryItems[index]);
              },
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
            ),
          ),
        ],
      ),
    );
  }
}
