import 'package:aahc/main.dart';
import 'package:aahc/screens/about.dart';
import 'package:aahc/screens/faq.dart';
import 'package:flutter/material.dart';

class More extends StatefulWidget {
  @override
  State<More> createState() => _MoreState();
}

class _MoreState extends State<More> {
  ButtonStyle buttonStyle = TextButton.styleFrom(
    primary: Colors.black,
    backgroundColor: Colors.white,
    shadowColor: Colors.amber,
    elevation: 5,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverToBoxAdapter(
              child: TextButton(
            onPressed: () {
              Navigator.push(
                context,
                // ignore: non_constant_identifier_names
                MaterialPageRoute(builder: (context) => About()),
              );
            },
            child: Text('About'),
            style: buttonStyle,
          )),
          SliverToBoxAdapter(
              child: TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Faq()),
              );
            },
            child: Text('FAQ'),
            style: buttonStyle,
          )),
        ],
      ),
    );
  }
}
