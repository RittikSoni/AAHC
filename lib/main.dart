import 'package:aahc/screens/about.dart';
import 'package:aahc/screens/faq.dart';
import 'package:aahc/screens/more.dart';
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
  bool isDark = false;
  int _index = 0;
  List screens = [
    Home(),
    Gallery(),
    Text('cert'),
    Contact(),
    More(),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AASTHA HALLMARK',

      // theme: ThemeData.dark().copyWith(
      //   primaryColor: Color(0xFF0A0E21),
      //   scaffoldBackgroundColor: Color(0xFF0A0E21),
      // ),
      theme: isDark
          ? ThemeData.light().copyWith(
              primaryColor: const Color(0xFFffffff),
              scaffoldBackgroundColor: const Color(0xFFffffff),
              textTheme: const TextTheme(
                bodyText1: TextStyle(color: Colors.red),
                bodyText2: TextStyle(color: Colors.black),
                subtitle1: TextStyle(color: Colors.black), //for input color
              ),
            )
          : ThemeData.dark().copyWith(
              primaryColor: const Color(0xFF0A0E21),
              scaffoldBackgroundColor: const Color(0xFF0A0E21),
            ),
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            actions: [
              IconButton(
                onPressed: () {
                  setState(() {
                    isDark ? isDark = false : isDark = true;
                  });
                },
                icon: Icon(isDark ? Icons.dark_mode : Icons.wb_sunny),
                color: isDark ? Colors.black : Colors.white,
              ),
            ],
            // bottom: PreferredSize(
            //     child: Text(
            //       'AAHC',
            //       style: TextStyle(color: isDark ? Colors.black : Colors.white),
            //     ),
            //     preferredSize: Size.fromHeight(0)),
            centerTitle: true,
            title: Text('AASTHA HALLMARK',
                style: TextStyle(
                    color: isDark ? Colors.black : Colors.amber,
                    letterSpacing: 5,
                    fontSize: 15)),
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
            color: isDark ? Colors.black : Colors.amber,
            activeColor: isDark ? Colors.black : Colors.white,
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
                text: 'AAHC Report',
              ),
              // GButton(
              //   icon: Icons.people,
              //   text: 'About',
              // ),
              GButton(
                icon: Icons.phone,
                text: 'Contact Us',
              ),
              GButton(
                icon: Icons.more_horiz_outlined,
                text: 'More',
              ),
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
      ),
    );
  }
}
