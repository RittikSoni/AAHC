import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'gallery_details.dart';
import 'gallery_images.dart';
import 'gallery_video.dart';

int _gindex = 0;
List tabs = [const GalleryImages(), GalleryVideo()];

class Gallery extends StatefulWidget {
  @override
  State<Gallery> createState() => _GalleryState();
}

class _GalleryState extends State<Gallery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: GNav(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          tabBackgroundGradient:
              const LinearGradient(colors: [Colors.black, Colors.amberAccent]),
          rippleColor: Colors.amber,
          gap: 10,
          tabs: const [
            GButton(
              icon: Icons.image,
              text: 'Images',
            ),
            GButton(
              icon: Icons.movie,
              text: 'Video',
            ),
          ],
          selectedIndex: _gindex,
          onTabChange: (index) {
            setState(() {
              _gindex = index;
            });
          },
        ),
      ),
      body: tabs.elementAt(_gindex),
    );
  }
}
