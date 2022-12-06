import 'package:flutter/material.dart';
import '/pages/itemcard.dart';

class FoodListView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Container(
        height: 160.0,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            ItemCard(),
            ItemCard(),
            ItemCard(),
            ItemCard(),
          ],
        ),
      ),
    );
  }
}