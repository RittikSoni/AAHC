import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(GalleryVideo());

Future<void> _launchInWebViewWithJavaScript() async {
  if (await canLaunch(
      'https://www.youtube.com/channel/UCK1zIQG6js6XSum6jHzbnww?sub_confirmation=1')) {
    await launch(
      'https://www.youtube.com/channel/UCK1zIQG6js6XSum6jHzbnww?sub_confirmation=1',
      // forceSafariVC: true,
      // forceWebView: true,
      // enableJavaScript: true,
      // enableDomStorage: true,
    );
  } else {
    throw 'Could not launch';
  }
}

openurl() {
  _launchInWebViewWithJavaScript();
}

class GalleryVideo extends StatefulWidget {
  @override
  State<GalleryVideo> createState() => _GalleryVideoState();
}

class _GalleryVideoState extends State<GalleryVideo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TextButton(
          onPressed: () {
            setState(() {
              openurl();
            });
          },
          child: Text('Go to our Youtube'),
          style: TextButton.styleFrom(
            primary: Colors.white,
            backgroundColor: Colors.amber,
            shadowColor: Colors.amber,
            elevation: 5,
          ),
        ),
      ],
    ));
  }
}
