import 'package:first_assignment/widgets/user_profile/call_us.dart';
import 'package:first_assignment/widgets/user_profile/contact.dart';
import 'package:first_assignment/widgets/user_profile/user_information.dart';
import 'package:first_assignment/widgets/user_profile/vote.dart';
import 'package:first_assignment/widgets/user_profile/work_album.dart';
import 'package:flutter/material.dart';

class UserScreen extends StatelessWidget {
  String name;
  String phoneNumber;
  String career;
  String imagePath;
  List<String> images;
  UserScreen({
    required this.name,
    required this.phoneNumber,
    required this.career,
    required this.imagePath,
    required this.images,
  });
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height - 3;
    final width = MediaQuery.of(context).size.width;
    final firstHight = height * 0.4;
    final secondHeight = height * 0.2;
    final thirdHeight = height * 0.2;
    final fourthHeight = height * 0.2;
    return Scaffold(
      // appBar: AppBar(),
      body: Column(
        children: [
          UserInformation(
              firstHight: firstHight,
              width: width,
              imagePath: imagePath,
              name: name,
              phoneNumber: phoneNumber,
              career: career),
          Divider(
            height: 1,
            thickness: 1,
            color: Colors.grey,
          ),
          WorkAlbum(width, secondHeight, images),
          Divider(
            height: 1,
            thickness: 1,
            color: Colors.grey,
          ),
          Vote(thirdHeight: thirdHeight, width: width),
          Divider(
            height: 1,
            thickness: 1,
            color: Colors.grey,
          ),
          Container(
            color: Colors.blue[50],
            height: fourthHeight,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 3,
                ),
                Contact(width: width),
                CallUs(width: width),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
