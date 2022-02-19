import './user_is_favorite.dart';
import 'package:flutter/material.dart';

class UserInformation extends StatelessWidget {
  const UserInformation({
    Key? key,
    required this.firstHight,
    required this.width,
    required this.imagePath,
    required this.name,
    required this.phoneNumber,
    required this.career,
  }) : super(key: key);

  final double firstHight;
  final double width;
  final String imagePath;
  final String name;
  final String phoneNumber;
  final String career;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue[50],
      height: firstHight,
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 3,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            height: firstHight * 0.65,
            width: double.infinity,
            child: Image.asset(
              'assets/images/Erbil.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: firstHight * 0.15,
            left: width * 0.05,
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back_outlined,
                size: 35,
              ),
            ),
          ),
          Positioned(
            top: firstHight * 0.4,
            right: 0,
            child: UserIsFavorite(width: width),
          ),
          Positioned(
            top: firstHight * 0.5,
            left: 20,
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 3,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage(imagePath),
              ),
            ),
          ),
          Positioned(
            right: width * 0.12,
            top: firstHight * 0.68,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "ناو: $name",
                  textAlign: TextAlign.end,
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: "NRT",
                    fontSize: 18,
                  ),
                ),
                Text(
                  "ژمارەی مۆبایل: $phoneNumber",
                  textAlign: TextAlign.end,
                  style: TextStyle(
                      color: Colors.black, fontFamily: "NRT", fontSize: 18),
                ),
                Text(
                  "پیشە: $career",
                  textAlign: TextAlign.end,
                  style: TextStyle(
                      color: Colors.black, fontFamily: "NRT", fontSize: 18),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
