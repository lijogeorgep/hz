import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hz/Batman.dart';
import 'package:hz/Details.dart';
import 'package:hz/Hulk.dart';
import 'package:hz/SpiderDetails.dart';
import 'package:hz/list_wheel.dart';

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
  var _color;
  dynamic _opacity;
  bool _toggled = true;
  @override
  void initState() {
    _color = Color(0xFFADD8E6);
    _opacity = 0.25;
    super.initState();
  }

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
                    height: 160,
                    width: 150,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.black12),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Hero(
                          tag: 'mario',
                          child: GestureDetector(
                            child: Image.network(
                              'https://icons.iconarchive.com/icons/ph03nyx/super-mario/256/Paper-Mario-icon.png',
                              width: 100.0,
                            ),
                            onTap: () => Navigator.push(
                                context,
                                PageRouteBuilder(
                                    transitionDuration: Duration(seconds: 2),
                                    pageBuilder: (_, __, ___) => Details())),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'SUPER MARIO',
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 160,
                    width: 150,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.black12),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Hero(
                          tag: 'spider',
                          child: GestureDetector(
                            child: Image.network(
                              'https://cdna.artstation.com/p/assets/images/images/019/221/596/original/hibban-mohammed-ezgif-com-gif-maker.gif?1562575662',
                              width: 100.0,
                            ),
                            onTap: () => Navigator.push(
                                context,
                                PageRouteBuilder(
                                    transitionDuration: Duration(seconds: 2),
                                    pageBuilder: (_, __, ___) =>
                                        SpiderDetails())),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'SPIDERMAN',
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AnimatedContainer(
                    duration: Duration(milliseconds: 1000),
                    height: 160,
                    width: 150,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.black12),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Hero(
                          tag: 'hulk',
                          child: GestureDetector(
                            child: Image.network(
                              'https://www.nicepng.com/png/full/10-104779_incredible-hulk-png-hulk-comic-png.png',
                              width: 100.0,
                            ),
                            onTap: () => Navigator.push(
                                context,
                                PageRouteBuilder(
                                    transitionDuration: Duration(seconds: 2),
                                    pageBuilder: (_, __, ___) =>
                                        HulkDetails())),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Hulk',
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 160,
                    width: 150,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.black12),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Hero(
                          tag: 'batman',
                          child: GestureDetector(
                            child: Image.network(
                              'https://purepng.com/public/uploads/large/purepng.com-arkham-batmanbatmansuperherocomicdc-comicsbob-kanebat-manbruce-wayne-1701528523764v4kbc.png',
                              width: 100.0,
                            ),
                            onTap: () => Navigator.push(
                                context,
                                PageRouteBuilder(
                                    transitionDuration: Duration(seconds: 2),
                                    pageBuilder: (_, __, ___) =>
                                        BatmanDetails())),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'BATMAN',
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Opacity(
                opacity: 0.25,
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 1000),
                  height: 200,
                  color: _color,
                  width: 200,
                  curve: Curves.bounceIn,
                ),
              ),
              AnimatedOpacity(
                opacity: _opacity,
                duration: Duration(milliseconds: 1000),
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 1000),
                  height: 200,
                  color: _color,
                  width: 200,
                  curve: Curves.bounceIn,
                ),
              ),
              ElevatedButton(
                  onPressed: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ListWheel())),
                  child: Text('click')),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.ac_unit),
        onPressed: () {
          setState(() {
            _color = Color(0xFF00FFFF);
            _opacity = 0.0;
          });
        },
      ),
    );
  }
}
