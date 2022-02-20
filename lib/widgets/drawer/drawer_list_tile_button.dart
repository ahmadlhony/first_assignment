import 'package:flutter/material.dart';

class DrawerListTileButton extends StatelessWidget {
  final label;
  final iconData;
  final Function onTab;
  DrawerListTileButton({
    Key? key,
    required this.label,
    required this.iconData,
    required this.onTab,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        iconData,
        color: Theme.of(context).primaryColor,
      ),
      title: Text(
        label,
        style: TextStyle(
          color: Theme.of(context).primaryColor,
          fontSize: 12,
          fontFamily: "NRT",
        ),
      ),
      onTap: () {},
    );
  }
}
