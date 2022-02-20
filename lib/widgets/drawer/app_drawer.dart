import 'package:flutter/material.dart';

import 'drawer_bottom_social_media_tile.dart';
import 'drawer_user_info.dart';
import './drawer_list_tile_button.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        elevation: 0,
        toolbarHeight: 0,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width / 2,
        child: Drawer(
          elevation: 0,
          child: Stack(
            children: [
              Column(
                children: [
                  DrawerUserInfo(),
                  DrawerListTileButton(
                      label: "چونە ژوورەوە",
                      iconData: Icons.login,
                      onTab: () {}),
                  // ListTile(
                  //   leading: Icon(
                  //     Icons.login,
                  //     color: Theme.of(context).primaryColor,
                  //   ),
                  //   title: Text(
                  //     "چونە ژوورەوە",
                  //     style: TextStyle(
                  //       color: Theme.of(context).primaryColor,
                  //       fontSize: 17,
                  //       fontFamily: "NRT",
                  //     ),
                  //   ),
                  //   onTap: () {},
                  // ),
                  Divider(
                    thickness: 1,
                  ),
                  DrawerListTileButton(
                    label: "دەربارەی ئێمە",
                    iconData: Icons.group,
                    onTab: () {},
                  ),
                  Divider(
                    thickness: 1,
                  ),
                  DrawerListTileButton(
                    label: "پەیوەندیکردن بە ئێمە",
                    iconData: Icons.public,
                    onTab: () {},
                  ),
                  Divider(
                    thickness: 1,
                  )
                ],
              ),
              Positioned(
                bottom: 4,
                child: DrawerBottomSocialMediaTile(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
