import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:offiql_internship_task/Home.dart';
import 'package:offiql_internship_task/elements/BottomNavigationBar.dart';
import 'package:offiql_internship_task/elements/NewsCard.dart';
import 'package:offiql_internship_task/elements/NewsMatchCard.dart';
import 'Widgets/TopAppBar.dart';
import 'Widgets/midButton.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        toolbarHeight: 150,
        backgroundColor: Colors.transparent,
        flexibleSpace: const TopAppBar(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
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
                width: 350,
                child: const NextMatchCard(),
              ),
            ),
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'News',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 200, // Constrain height.
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              shrinkWrap: true,
                              children: [
                                NewsCard(),
                                NewsCard(),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Center(
                          child: Container(
                              height: 199,
                              // ignore this, cos I am giving height to the container
                              width:
                                  317, // ignore this, cos I am giving width to the container
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage('assets/stadium.jpg'))),
                              alignment: Alignment
                                  .bottomCenter, // This aligns the child of the container
                              child: Container(
                                  alignment: Alignment.bottomCenter,
                                  height: 100,
                                  width: MediaQuery.of(context).size.width,
                                  color: Colors.black45,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          alignment: Alignment.centerLeft,
                                          height: 6,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              3,
                                          color: Colors.green,
                                        ),
                                        const SizedBox(
                                          height: 8,
                                        ),
                                        const Text(
                                            'The Record was reached with 90000 fans',
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold)),
                                      ],
                                    ),
                                  ))),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        NavigationBarItem(msg: 'home', iconData: Icons.home),
                        NavigationBarItem(
                            msg: 'Calender',
                            iconData: Icons.calendar_month_outlined),
                        GlowingActionButton(
                            color: Colors.green,
                            icon: Icons.plus_one,
                            onPressed: () {}),
                        NavigationBarItem(msg: 'Shop', iconData: Icons.shop),
                        NavigationBarItem(
                            msg: 'Tickets', iconData: Icons.airplane_ticket),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
