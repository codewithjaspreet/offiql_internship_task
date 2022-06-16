import 'package:flutter/material.dart';

class NextMatchCard extends StatelessWidget {
  const NextMatchCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
                width: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
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
                      style: TextStyle(color: Colors.green, fontSize: 8),
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Text(
                      'V. Greens',
                      style: TextStyle(
                          color: Colors.green, fontWeight: FontWeight.bold),
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
    );
  }
}
