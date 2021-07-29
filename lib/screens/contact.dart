import 'dart:convert';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:url_launcher/url_launcher.dart';

// String? name;
// String? subject;
// String? email;
// String? fmessage;

void main() => runApp(Contact());

class Contact extends StatefulWidget {
  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  Future sendEmail({
    String? name,
    String? subject,
    String? email,
    String? fmessage,
  }) async {
    final url = Uri.parse('https://api.emailjs.com/api/v1.0/email/send');
    const serviceId = 'service_xdtmh28';
    const templateId = 'template_eg43bfb';
    const userId = 'user_cRFqAEERiq5CnVxHUEoqL';
    try {
      final response = await http.Client().post(
        url,
        headers: {'Content-Type': 'application/json'},
        body: json.encode(
          {
            'service_id': serviceId,
            'template_id': templateId,
            'user_id': userId,
            'accessToken': '611cf11ed31b6b1328b0d64b83e5304b',
            'template_params': {
              'user_name': name,
              'user_email': email,
              'user_subject': subject,
              'user_message': fmessage,
            }
          },
        ),
      );
      print(response.body);
      print(response.statusCode);
    } catch (e) {
      print(e);
    }
    ;
  }

  ButtonStyle socialMediaButtonStyle = TextButton.styleFrom(
    primary: Colors.black,
    backgroundColor: Colors.white,
    shadowColor: Colors.amber,
    elevation: 5,
  );

  @override
  Widget build(BuildContext context) {
    final _mcontroller = TextEditingController();
    final _econtroller = TextEditingController();
    final _scontroller = TextEditingController();
    final _ncontroller = TextEditingController();
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
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 20, bottom: 40),
                child: Text(
                  'AASTHA ASSAYING & HALLMARKING CENTRE',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      letterSpacing: 5,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Padding(
                padding: EdgeInsets.only(top: 0, bottom: 40),
                child: Text(
                  '''1733,3rd Floor\nDariba kalan, Chandni chowk\nDelhi-110006\nIndia''',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                  textAlign: TextAlign.left,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                //**social media */

                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        Future<void> _launchInWebViewWithJavaScript() async {
                          if (await canLaunch(
                              'https://www.facebook.com/profile.php?id=100013132985443')) {
                            await launch(
                              'https://www.facebook.com/profile.php?id=100013132985443',
                              // forceSafariVC: true,
                              // forceWebView: true,
                              // enableJavaScript: true,
                              // enableDomStorage: true,
                            );
                          } else {
                            throw 'Could not launch';
                          }
                        }

                        _launchInWebViewWithJavaScript();
                      });
                    },
                    icon: const Icon(Icons.facebook),
                    iconSize: 35,
                    color: Colors.lightBlue,
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
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

                        _launchInWebViewWithJavaScript();
                      });
                    },
                    child: const Text(
                      'Youtube',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    style: socialMediaButtonStyle,
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        Future<void> _launchInWebViewWithJavaScript() async {
                          if (await canLaunch(
                              'https://twitter.com/AHallmarking')) {
                            await launch(
                              'https://twitter.com/AHallmarking',
                              // forceSafariVC: true,
                              // forceWebView: true,
                              // enableJavaScript: true,
                              // enableDomStorage: true,
                            );
                          } else {
                            throw 'Could not launch';
                          }
                        }

                        _launchInWebViewWithJavaScript();
                      });
                    },
                    child: const Text(
                      'Twitter',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    style: socialMediaButtonStyle,
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        Future<void> _launchInWebViewWithJavaScript() async {
                          if (await canLaunch(
                              "https://wa.me/919582792574?text=Hello%20I%20want%20to%20know%20about%20")) {
                            await launch(
                              "https://wa.me/919582792574?text=Hello%20I%20want%20to%20know%20about%20",
                              // forceSafariVC: true,
                              // forceWebView: true,
                              // enableJavaScript: true,
                              // enableDomStorage: true,
                            );
                          } else {
                            throw 'Could not launch';
                          }
                        }

                        _launchInWebViewWithJavaScript();
                      });
                    },
                    child: const Text(
                      'Whatsapp',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    style: socialMediaButtonStyle,
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    Future<void> _launchInWebViewWithJavaScript() async {
                      if (await canLaunch(
                          'https://www.google.com/maps/place/Aastha+Hallmarking+Centre/@28.6556217,77.2312871,17z/data=!3m1!4b1!4m5!3m4!1s0x390cfd1b9790e28d:0xc7efea93ad77ada0!8m2!3d28.6556237!4d77.2333993')) {
                        await launch(
                          'https://www.google.com/maps/place/Aastha+Hallmarking+Centre/@28.6556217,77.2312871,17z/data=!3m1!4b1!4m5!3m4!1s0x390cfd1b9790e28d:0xc7efea93ad77ada0!8m2!3d28.6556237!4d77.2333993',
                          // forceSafariVC: true,
                          // forceWebView: true,
                          // enableJavaScript: true,
                          // enableDomStorage: true,
                        );
                      } else {
                        throw 'Could not launch';
                      }
                    }

                    _launchInWebViewWithJavaScript();
                  });
                },
                child: const ListTile(
                  trailing: Icon(Icons.location_on),
                  tileColor: Colors.amber,
                  leading: Icon(
                    Icons.map,
                    color: Colors.green,
                  ),
                  title: Text(
                    'Get Direction',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                style: socialMediaButtonStyle,
              ),
            ],
          ),
        ),
        ListView(
          //** F E E D B A C K     F O R M */
          children: [
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                'Need Us? Message Us.',
                style: TextStyle(fontSize: 20),
              ),
            ),
            TextField(
              controller: _ncontroller,
              // onSubmitted: (value) {
              //   sendEmail(name: value);
              // },
              cursorColor: Colors.amber,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50)),
                  labelText: 'Name'),
              maxLength: 20,
            ),
            TextField(
              // onSubmitted: (value) => sendEmail(subject: value),
              controller: _scontroller,
              cursorColor: Colors.amber,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50)),
                  labelText: 'Subject'),
              maxLength: 20,
            ),
            TextFormField(
              // onFieldSubmitted: (value) {
              //   sendEmail(
              //     email: value,
              //   );
              //   _mcontroller.clear();
              // },
              controller: _econtroller,

              cursorColor: Colors.amber,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50)),
                  labelText: 'E-mail'),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: _mcontroller,
              // onSubmitted: (text) {
              //   sendEmail(fmessage: text);
              //   _mcontroller.clear();
              // },
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
                    var message = _mcontroller.text;
                    var email = _econtroller.text;
                    var subject = _scontroller.text;
                    var name = _ncontroller.text;

                    sendEmail(
                        email: email,
                        fmessage: message,
                        subject: subject,
                        name: name);
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
