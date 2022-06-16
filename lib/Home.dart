import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Widgets/TopAppBar.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        toolbarHeight: 190,
        backgroundColor: Colors.transparent,
        flexibleSpace: TopAppBar(),
      ),
    );
  }
}

// class BottomNavigationBar extends StatelessWidget {
//   const BottomNavigationBar({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       child: Padding(
//         padding: EdgeInsets.only(top: 16, left: 8, right: 8),
//         child: Row(
//           children: <Widget>[
//             NavigationBarItem(
//               iconData: CupertinoIcons.bubble_left_bubble_right_fill,
//               msg: 'messaging',
//             ),
//             NavigationBarItem(
//               iconData: CupertinoIcons.bubble_left_bubble_right_fill,
//               msg: 'messaging',
//             ),
//             NavigationBarItem(
//               iconData: CupertinoIcons.bubble_left_bubble_right_fill,
//               msg: 'messaging',
//             ),
//             NavigationBarItem(
//               iconData: CupertinoIcons.bubble_left_bubble_right_fill,
//               msg: 'messaging',
//             ),
//             NavigationBarItem(
//               iconData: CupertinoIcons.bubble_left_bubble_right_fill,
//               msg: 'messaging',
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class NavigationBarItem extends StatelessWidget {
//   const NavigationBarItem({Key? key, required this.msg, required this.iconData})
//       : super(key: key);
//   final String msg;
//   final IconData iconData;
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: 70,
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           Icon(
//             iconData,
//             size: 20,
//             color: Colors.white,
//           ),
//           SizedBox(
//             height: 8,
//           ),
//           Text(
//             msg,
//             style: TextStyle(
//               fontSize: 11,
//               fontWeight: FontWeight.bold,
//               color: Colors.white,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
