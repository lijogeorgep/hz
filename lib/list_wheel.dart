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
         diameterRatio: 3.5,
          offAxisFraction: 0.0,

          children:[
            Container(
              height: 150,
              width: 350,
              decoration: BoxDecoration(border: Border.all(width: 1,color: Colors.amber)),
              child: Center(child: Text('Test'),),
            ),
            Container(
              height: 150,
              width: 350,
              decoration: BoxDecoration(border: Border.all(width: 1,color: Colors.greenAccent)),  child: Center(child: Text('Test'),),
            ),
            Container(
              height: 150,
              width: 350,
              decoration: BoxDecoration(border: Border.all(width: 1,color: Colors.lightBlue)),  child: Center(child: Text('Test'),),
            ),
            Container(
              height: 150,
              width: 350,
              decoration: BoxDecoration(border: Border.all(width: 1,color: Colors.black)),  child: Center(child: Text('Test'),),
            ),
            Container(
              height: 150,
              width: 350,
              decoration: BoxDecoration(border: Border.all(width: 1,color: Colors.white)),  child: Center(child: Text('Test'),),
            ),
            Container(
              height: 150,
              width: 350,
              decoration: BoxDecoration(border: Border.all(width: 1,color: Colors.grey)),  child: Center(child: Text('Test'),),
            ),
            Container(
              height: 150,
              width: 350,
              decoration: BoxDecoration(border: Border.all(width: 1,color: Colors.deepOrangeAccent)),  child: Center(child: Text('Test'),),
            ),
            Container(
              height: 150,
              width: 350,
              decoration: BoxDecoration(border: Border.all(width: 1,color: Colors.deepPurple)),  child: Center(child: Text('Test'),),
            ),
            Container(
              height: 150,
              width: 350,
              decoration: BoxDecoration(border: Border.all(width: 1,color: Colors.yellowAccent)),  child: Center(child: Text('Test'),),
            ),
            Container(
              height: 150,
              width: 350,
              decoration: BoxDecoration(border: Border.all(width: 1,color: Colors.green)),  child: Center(child: Text('Test'),),
            ),


          ]),
    );
  }
}
