import 'package:flutter/material.dart';
import 'package:hz/main.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class Details extends StatefulWidget {
  const Details({Key? key}) : super(key: key);

  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(Icons.arrow_back,color: Colors.black,),
          onPressed: () => Navigator.push(
              context,
              PageRouteBuilder(
                  transitionDuration: Duration(seconds: 2),
                  pageBuilder: (_, __, ___) => HzHomePage())),
        ),
      ),
      body: Container(
        height: double.infinity,
        margin: EdgeInsets.only(top: 30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Center(
              child: Hero(
                tag: 'mario',
                child: GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        PageRouteBuilder(
                            transitionDuration: Duration(seconds: 2),
                            pageBuilder: (_, __, ___) => HzHomePage())),
                    child: Image.network(
                      'https://icons.iconarchive.com/icons/ph03nyx/super-mario/256/Paper-Mario-icon.png',
                      width: 200.0,
                    )),
              ),
            ),
            Container(
              height: 50,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: AnimatedTextKit(
                  repeatForever: true,
                  animatedTexts: [
                    ScaleAnimatedText(
                      'Super Mario',
                      textStyle: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),

                      duration: Duration(
                          milliseconds:
                              6000), // speed: const Duration(milliseconds: 2000),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
