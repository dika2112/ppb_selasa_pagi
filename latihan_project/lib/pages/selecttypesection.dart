import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SelectTypeSection extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: SingleChildScrollView(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
              child: Container(
                height: 92.0,
                width: 120.0,
                color: Colors.lightGreen,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      FontAwesomeIcons.starHalfAlt,
                      color: Colors.green,
                    ),
                    SizedBox(
                      height: 4.0,
                    ),
                    Text(
                      'Special Menu',
                      style:
                          TextStyle(color: Colors.green, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: 92.0,
              width: 120.0,
              color: Colors.redAccent,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    FontAwesomeIcons.solidClock,
                    color: Colors.red,
                  ),
                  SizedBox(
                    height: 4.0,
                  ),
                  Text(
                    'Book a Table',
                    style: TextStyle(color: Colors.red, fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
            Container(
              height: 92.0,
              width: 124.0,
              color: Colors.lightBlue,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    FontAwesomeIcons.solidLaugh,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    height: 4.0,
                  ),
                  Text(
                    'Caterings',
                    style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}