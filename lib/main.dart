import 'package:aahc/screens/about.dart';
import 'package:flutter/material.dart';
import 'screens/home.dart';
import 'screens/contact.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'screens/gallery.dart';

void main() => runApp(Aahc());

class Aahc extends StatefulWidget {
  @override
  State<Aahc> createState() => _AahcState();
}

class _AahcState extends State<Aahc> {
  int _index = 0;
  List screens = [Home(), Gallery(), Text('Cert'), About(), Contact()];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AASTHA HALLMARK',
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      home: Scaffold(
        appBar: AppBar(
          bottom: const PreferredSize(
              child: Text('AAHC'), preferredSize: Size.fromHeight(0)),
          centerTitle: true,
          title: const Text('AASTHA HALLMARK',
              style: TextStyle(
                  color: Colors.amber, letterSpacing: 5, fontSize: 15)),
          leading: Image.asset(
            'images/aahclogo.png',
            alignment: Alignment.centerLeft,
          ),
          shadowColor: Colors.amber,
        ),
        bottomNavigationBar: GNav(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          tabBackgroundGradient: const LinearGradient(
              colors: [Colors.yellowAccent, Colors.redAccent]),
          rippleColor: Colors.amber,
          gap: 10,
          tabs: const [
            GButton(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.zero,
                  bottomRight: Radius.circular(20),
                  topRight: Radius.circular(20)),
              icon: Icons.home,
              text: 'Home',
            ),
            GButton(
              icon: Icons.slideshow,
              text: 'Gallery',
            ),
            GButton(
              icon: Icons.credit_card,
              text: 'AAHC Certificate',
            ),
            GButton(
              icon: Icons.people,
              text: 'About',
            ),
            GButton(
              icon: Icons.phone,
              text: 'Contact Us',
            )
          ],
          selectedIndex: _index,
          onTabChange: (index) {
            setState(() {
              _index = index;
            });
          },
        ),
        body: screens.elementAt(_index),
      ),
    );
  }
}
