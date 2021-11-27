import 'package:flutter/material.dart';

class CallUs extends StatelessWidget {
  const CallUs({
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(15),
          ),
        ),
        height: 60,
        width: width,
        child: Icon(
          Icons.phone_in_talk_rounded,
          color: Colors.white,
          size: 50,
        ),
      ),
    );
  }
}
