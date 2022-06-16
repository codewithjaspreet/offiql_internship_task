import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavigationBar extends StatelessWidget {
  const BottomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: <Widget>[
          NavigationBarItem(
            iconData: CupertinoIcons.bubble_left_bubble_right_fill,
            msg: 'messaging',
          ),
          NavigationBarItem(
            iconData: CupertinoIcons.bubble_left_bubble_right_fill,
            msg: 'messaging',
          ),
          NavigationBarItem(
            iconData: CupertinoIcons.bubble_left_bubble_right_fill,
            msg: 'messaging',
          ),
          NavigationBarItem(
            iconData: CupertinoIcons.bubble_left_bubble_right_fill,
            msg: 'messaging',
          ),
          NavigationBarItem(
            iconData: CupertinoIcons.bubble_left_bubble_right_fill,
            msg: 'messaging',
          ),
        ],
      ),
    );
  }
}

class NavigationBarItem extends StatelessWidget {
  const NavigationBarItem({Key? key, required this.msg, required this.iconData})
      : super(key: key);
  final String msg;
  final IconData iconData;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 60,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            iconData,
            size: 20,
            color: Colors.green,
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            msg,
            style: TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
