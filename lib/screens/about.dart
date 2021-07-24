import 'package:flutter/material.dart';

class About extends StatefulWidget {
  About({Key? key}) : super(key: key);

  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverToBoxAdapter(
              child: Container(
            height: 1000,
            color: Colors.white,
          )),
          SliverToBoxAdapter(
            child: Container(
              height: 1000,
              color: Colors.amber,
            ),
          )
        ],
      ),
    );
  }
}
