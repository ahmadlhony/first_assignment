// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:first_assignment/widgets/category_item.dart';
import 'package:flutter/material.dart';

class CategoryGrid extends StatelessWidget {
  final _category;
  CategoryGrid(this._category);
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
                  _category,
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
            child: ListView(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                children: [
                  CategoryItem(
                      "ئەحمەد سەمیر سەملیم", "٠٧٥٠١١١١١١١", "ئەندازیار"),
                  CategoryItem(
                      "ئەحمەد سەمیر سەملیم", "٠٧٥٠١١١١١١١", "ئەندازیار"),
                  CategoryItem(
                      "ئەحمەد سەمیر سەملیم", "٠٧٥٠١١١١١١١", "ئەندازیار"),
                  CategoryItem(
                      "ئەحمەد سەمیر سەملیم", "٠٧٥٠١١١١١١١", "ئەندازیار"),
                  CategoryItem(
                      "ئەحمەد سەمیر سەملیم", "٠٧٥٠١١١١١١١", "ئەندازیار"),
                ]),
          ),
        ],
      ),
    );
  }
}
