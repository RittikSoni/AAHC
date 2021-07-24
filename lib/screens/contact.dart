import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:mailer/smtp_server.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:mailer/mailer.dart';

String? name;
String? subject;
String? email;
String? fmessage;

void main() => runApp(Contact());

class Contact extends StatefulWidget {
  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
      scrollDirection: Axis.vertical,
      children: [
        Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(50)),
              image: DecorationImage(
                image: AssetImage('images/contact.jpg'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(Colors.black54, BlendMode.darken),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Padding(
                  padding: EdgeInsets.only(top: 20, bottom: 40),
                  child: Text(
                    'AASTHA ASSAYING & HALLMARKING CENTRE',
                    style: TextStyle(
                        fontSize: 20,
                        letterSpacing: 5,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  '''1733,3rd Floor\nDariba kalan, Chandni chowk\nDelhi-110006\nIndia''',
                  style: TextStyle(fontSize: 18),
                  textAlign: TextAlign.left,
                )
              ],
            )),
        ListView(
          children: [
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                'Feedback',
                style: TextStyle(fontSize: 20),
              ),
            ),
            TextField(
              onChanged: (value) {
                name = value;
              },
              cursorColor: Colors.amber,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50)),
                  labelText: 'Name'),
              maxLength: 20,
            ),
            TextField(
              onChanged: (value) => subject = value,
              cursorColor: Colors.amber,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50)),
                  labelText: 'Subject'),
              maxLength: 20,
            ),
            TextFormField(
              onChanged: (value) => email = value,
              cursorColor: Colors.amber,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50)),
                  labelText: 'E-mail'),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              onChanged: (value) => fmessage = value,
              cursorColor: Colors.amber,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50)),
                  labelText: 'Message...'),
              maxLines: 10,
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50, right: 50, top: 20),
              child: TextButton(
                onPressed: () {
                  setState(() {
                    print('pressed $name $subject $email $fmessage');
                  });
                },
                child: Text('Send Message'),
                style: TextButton.styleFrom(
                  primary: Colors.white,
                  backgroundColor: Colors.amber,
                  shadowColor: Colors.amber,
                  elevation: 5,
                ),
              ),
            )
          ],
        )
      ],
    ));
  }
}
