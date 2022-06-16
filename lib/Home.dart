import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Widgets/TopAppBar.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        toolbarHeight: 150,
        backgroundColor: Colors.transparent,
        flexibleSpace: TopAppBar(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Next Match',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: const <BoxShadow>[
                    BoxShadow(
                        color: Colors.black54,
                        blurRadius: 4.0,
                        offset: Offset(0.0, 1.5))
                  ],
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xffD3D3D3),
                      Colors.white,
                    ],
                    stops: [3 / 6, 2 / 6],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  borderRadius: BorderRadius.circular(30),
                ),
                height: 130,
                width: 400,
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          const CircleAvatar(
                            backgroundColor: Colors.red,
                          ),
                          const CircleAvatar(
                            backgroundColor: Colors.green,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: const [
                                Text(
                                  'Red Devils',
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  'vs',
                                  style: TextStyle(
                                      color: Colors.green, fontSize: 8),
                                ),
                                SizedBox(
                                  width: 2,
                                ),
                                Text(
                                  'V. Greens',
                                  style: TextStyle(
                                      color: Colors.green,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                                Icon(
                                  Icons.more_vert,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(13.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.calendar_month_outlined,
                                color: Colors.black,
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text('9 May 2021'),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text('10:45'),
                                ],
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.account_balance_wallet,
                                    color: Colors.black,
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text('Champions League'),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CardMiddle extends StatelessWidget {
  const CardMiddle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
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
