// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class WorkAlbum extends StatelessWidget {
  double width;
  double secondHeight;
  List<String> images;
  WorkAlbum(this.width, this.secondHeight, this.images);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue[50],
      height: secondHeight,
      width: width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.all(0),
            padding: EdgeInsets.fromLTRB(6, 3, 0, 0),
            alignment: Alignment.centerLeft,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "ئەلبومی کارەکانم",
                  // "Hello",
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 19,
                    fontFamily: "NRT",
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: InkWell(
                    onTap: () {},
                    child: Text(
                      "زیاتر ببینە",
                      // "Hello",
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 13,
                        fontFamily: "NRT",
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            // alignment: Alignment.topCenter,
            // color: Colors.black,
            height: 90,
            width: width,
            child: ListView.builder(
              itemCount: images.length,
              itemBuilder: (BuildContext ctx, int index) {
                return albumImage(images[index]);
              },
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
            ),
          )
        ],
      ),
    );
  }

  Widget albumImage(String path) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(25)),
        child: Image.asset(
          path,
          fit: BoxFit.cover,
          height: 90,
          width: 90,
        ),
      ),
    );
  }
}
