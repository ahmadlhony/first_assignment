import 'package:first_assignment/screens/home_screen.dart';
import 'package:first_assignment/widgets/app_drawer.dart';
import 'package:flutter/material.dart';

class TempScreen extends StatefulWidget {
  @override
  _TempScreenState createState() => _TempScreenState();
}

class _TempScreenState extends State<TempScreen> {
  var isDrawerOpen = false;

  void drawerHandler() {
    setState(() {
      isDrawerOpen = !isDrawerOpen;
    });
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Stack(
      clipBehavior: Clip.none,
      // overflow: ,
      children: [
        Container(
          child: AppDrawer(),
        ),
        AnimatedContainer(
          duration: Duration(milliseconds: 750),
          transform: Matrix4.translationValues(
            isDrawerOpen ? MediaQuery.of(context).size.width / 2 : 0,
            0,
            0,
          ),
          child: isDrawerOpen
              ? GestureDetector(
                  child: AbsorbPointer(
                    absorbing: isDrawerOpen,
                    child: HomeScreen(drawerHandler),
                  ),
                  onTap: drawerHandler,
                )
              : HomeScreen(drawerHandler),
        ),
      ],
    );
  }
}
