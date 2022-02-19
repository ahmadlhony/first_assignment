import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    Key? key,
    required this.drawerHandler,
  }) : super(key: key);

  final Function drawerHandler;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Theme.of(context).primaryColor,
      // shape: RoundedRectangleBorder(
      //   borderRadius: BorderRadius.vertical(
      //     bottom: Radius.circular(15),
      //   ),
      // ),
      title: Center(
        child: Icon(
          Icons.location_pin,
          color: Colors.white,
          size: 30,
        ),
      ),
      leading: Builder(builder: (context) {
        return IconButton(
          icon: Icon(
            Icons.sort,
            size: 30,
          ),
          onPressed: () {
            drawerHandler();
          },
        );
      }),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.search,
            size: 30,
          ),
        ),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => new Size.fromHeight(60);
}
