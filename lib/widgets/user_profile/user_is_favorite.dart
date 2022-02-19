import 'package:flutter/material.dart';

class UserIsFavorite extends StatefulWidget {
  const UserIsFavorite({
    required this.width,
  });

  final double width;

  @override
  State<UserIsFavorite> createState() => _UserIsFavoriteState();
}

class _UserIsFavoriteState extends State<UserIsFavorite> {
  var isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
      child: Container(
          width: widget.width * 0.16,
          height: 30,
          decoration: BoxDecoration(
            color: isFavorite ? Colors.white : Theme.of(context).primaryColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              bottomLeft: Radius.circular(15),
            ),
          ),
          child: Center(
              child: Icon(
            Icons.favorite,
            color: isFavorite ? Theme.of(context).primaryColor : Colors.white,
          ))),
    );
  }
}
