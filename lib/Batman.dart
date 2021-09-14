import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:hz/main.dart';

class BatmanDetails extends StatefulWidget {
  const BatmanDetails({Key? key}) : super(key: key);

  @override
  _BatmanDetailsState createState() => _BatmanDetailsState();
}

class _BatmanDetailsState extends State<BatmanDetails> {
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
        margin: EdgeInsets.only(top: 30.0),
        height: double.infinity,
        child: Column(
          mainAxisAlignment:MainAxisAlignment.start,
          children: [
            Center(
              child: Hero(
                tag: 'batman',
                child:GestureDetector(
                    onTap: ()=>Navigator.push(context, PageRouteBuilder(
                        transitionDuration: Duration(seconds: 2),
                        pageBuilder: (_, __, ___) => HzHomePage())),
                    child: Image.network('https://purepng.com/public/uploads/large/purepng.com-arkham-batmanbatmansuperherocomicdc-comicsbob-kanebat-manbruce-wayne-1701528523764v4kbc.png',width: 200.0,)),
              ),
            ),
            Container(
              height: 50,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child:AnimatedTextKit(
                  repeatForever: true,
                  animatedTexts: [

                    ScaleAnimatedText(
                      'BATMAN',
                      textStyle: const TextStyle(

                        fontWeight: FontWeight.bold,
                      ),


                      duration: Duration(milliseconds: 6000),

                    ),

                  ],
                ),


              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using Content here, content here, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for lorem ipsum will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).',
                textAlign: TextAlign.justify,),
            ),
          ],
        ),
      ),
    );
  }
}