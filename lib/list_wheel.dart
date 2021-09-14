import 'package:flutter/material.dart';
class ListWheel extends StatefulWidget {
  const ListWheel({Key? key}) : super(key: key);

  @override
  _ListWheelState createState() => _ListWheelState();
}

class _ListWheelState extends State<ListWheel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  ListWheelScrollView(
          itemExtent: 100.0,
         diameterRatio: 1.5,
          offAxisFraction: -0.5,

          children:[
            Container(
              height: 150,
              width: 350,
              decoration: BoxDecoration(border: Border.all(width: 1,color: Colors.amber)),
            ),
            Container(
              height: 150,
              width: 350,
              decoration: BoxDecoration(border: Border.all(width: 1,color: Colors.greenAccent)),
            ),
            Container(
              height: 150,
              width: 350,
              decoration: BoxDecoration(border: Border.all(width: 1,color: Colors.lightBlue)),
            ),
            Container(
              height: 150,
              width: 350,
              decoration: BoxDecoration(border: Border.all(width: 1,color: Colors.black)),
            ),
            Container(
              height: 150,
              width: 350,
              decoration: BoxDecoration(border: Border.all(width: 1,color: Colors.white)),
            ),
            Container(
              height: 150,
              width: 350,
              decoration: BoxDecoration(border: Border.all(width: 1,color: Colors.grey)),
            ),
            Container(
              height: 150,
              width: 350,
              decoration: BoxDecoration(border: Border.all(width: 1,color: Colors.deepOrangeAccent)),
            ),
            Container(
              height: 150,
              width: 350,
              decoration: BoxDecoration(border: Border.all(width: 1,color: Colors.deepPurple)),
            ),
            Container(
              height: 150,
              width: 350,
              decoration: BoxDecoration(border: Border.all(width: 1,color: Colors.yellowAccent)),
            ),
            Container(
              height: 150,
              width: 350,
              decoration: BoxDecoration(border: Border.all(width: 1,color: Colors.green)),
            ),


          ]),
    );
  }
}
