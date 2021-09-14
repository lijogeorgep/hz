import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hz/Details.dart';
import 'package:hz/SpiderDetails.dart';

void main() {
  runApp(MyApp());
  SystemChrome.setEnabledSystemUIOverlays([]);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HzHomePage(),
    );
  }
}

class HzHomePage extends StatefulWidget {
  const HzHomePage({Key? key}) : super(key: key);

  @override
  _HzHomePageState createState() => _HzHomePageState();
}

class _HzHomePageState extends State<HzHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(

          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1,color: Colors.black12),
                    ),
                    child: Column(
                      children: [
                        Hero(
                          tag: 'mario',
                          child:GestureDetector(
                              child: Image.network('https://icons.iconarchive.com/icons/ph03nyx/super-mario/256/Paper-Mario-icon.png',width: 100.0,),
                            onTap: ()=>Navigator.push(context, PageRouteBuilder(
                                transitionDuration: Duration(seconds: 2),
                                pageBuilder: (_, __, ___) => Details())),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('SUPER MARIO',textAlign: TextAlign.center,),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 20,),
                  Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1,color: Colors.black12),
                    ),
                    child: Column(
                      children: [
                        Hero(
                          tag: 'spider',
                          child:GestureDetector(
                            child: Image.network('https://toppng.com/uploads/preview/spider-man-11530958095aavuimi1gi.png',width: 100.0,),
                            onTap: ()=>Navigator.push(context, PageRouteBuilder(
                                transitionDuration: Duration(seconds: 2),
                                pageBuilder: (_, __, ___) =>SpiderDetails())),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('SPIDERMAN',textAlign: TextAlign.center,),
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            ],
          ),
        ),
      ),

    );
  }
}

