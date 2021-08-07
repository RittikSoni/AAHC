import 'package:flutter/material.dart';

class SlideImages extends StatelessWidget {
  const SlideImages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Hero(
      tag: 'slideimage',
      child: Container(
        height: 400,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/adgl/article5.png'),
                fit: BoxFit.cover)),
      ),
    ));
  }
}
