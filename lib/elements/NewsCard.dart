import 'package:flutter/material.dart';

class NewsCard extends StatelessWidget {
  @override
  // NewsCard({required this.msg, required this.icon});

  // final String msg;
  // final AssetImage icon;
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: Colors.white),
        width: 200.0,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Super Liga',
                style: TextStyle(color: Colors.black),
              ),
              SizedBox(
                height: 10,
              ),
              Text('Sun , 08 May', style: TextStyle(color: Colors.grey)),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'assets/shield.png',
                    ),
                    Image.asset('assets/football-flag.png'),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    '4',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  Text('-',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                  Text('1',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
