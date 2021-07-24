import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/cupertino.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView(
          scrollDirection: Axis.vertical,
          children: [
            Container(
                decoration: const BoxDecoration(
                  // gradient: LinearGradient(
                  //     colors: [Colors.red, Colors.green],
                  //     begin: Alignment.bottomCenter,
                  //     end: Alignment.topCenter),
                  borderRadius:
                      BorderRadius.only(bottomRight: Radius.circular(50)),
                  image: DecorationImage(
                    image: AssetImage('images/office.jpg'),
                    fit: BoxFit.cover,
                    colorFilter:
                        ColorFilter.mode(Colors.black54, BlendMode.darken),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'AAHC',
                      style: TextStyle(
                          fontSize: 40,
                          letterSpacing: 5,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'AASTHA ASSAYING & HALLMARKING',
                      style: TextStyle(fontSize: 25, letterSpacing: 5),
                      textAlign: TextAlign.center,
                    ),
                  ],
                )),
            Container(
              decoration: const BoxDecoration(color: Colors.white),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'images/bis.png',
                    width: 200,
                  ),
                  const Center(
                      child: Padding(
                    padding: EdgeInsets.only(
                        left: 20, right: 40, top: 40, bottom: 0),
                    child: Text(
                      'AAHC is the diamond & gemological lab and hallmarking center serving consumer protection. We plan to remain a top choice of the jewelry industry and the consumer when it comes to reliability, integrity, and an absolute conviction to serve everyone who relies upon our judgments and services.',
                      style: TextStyle(color: Colors.black),
                      textAlign: TextAlign.center,
                    ),
                  )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
