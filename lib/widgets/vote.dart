import 'package:flutter/material.dart';

class Vote extends StatefulWidget {
  Vote({
    required this.thirdHeight,
    required this.width,
  });

  final double thirdHeight;
  final double width;
  final List<int> stars = [0, 1, 2, 3, 4];

  @override
  State<Vote> createState() => _VoteState();
}

class _VoteState extends State<Vote> {
  var selectedItem = -1;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue[50],
      height: widget.thirdHeight,
      width: widget.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            margin: EdgeInsets.all(0),
            padding: EdgeInsets.fromLTRB(6, 6, 0, 0),
            alignment: Alignment.centerLeft,
            child: Text(
              "دەنگدان",
              // "Hello",
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: 17,
                fontFamily: "NRT",
              ),
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: widget.stars.map((e) {
                return iconBuilder(
                    context,
                    selectedItem < e
                        ? Icons.star_outline_rounded
                        : Icons.star_rounded,
                    e);
              }).toList(),
            ),
          ),
          Container(
            width: widget.width / 3,
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  selectedItem = -1;
                });
              },
              child: Row(
                children: [
                  Icon(
                    Icons.check_rounded,
                  ),
                  Text(
                    "دەنگ بدە",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Theme.of(context).primaryColor),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(28.0),
                    // side: BorderSide(color: Colors.red),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  IconButton iconBuilder(BuildContext context, IconData icon, int index) {
    return IconButton(
      onPressed: () {
        setState(() {
          selectedItem = index;
        });
      },
      icon: Icon(
        icon,
        size: 40,
        color: Theme.of(context).primaryColor,
      ),
    );
  }
}
