import 'package:aahc/constants.dart';
import 'package:aahc/screens/test_report.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:loading_overlay/loading_overlay.dart';

class Testing extends StatefulWidget {
  const Testing({Key? key}) : super(key: key);

  @override
  State<Testing> createState() => _TestingState();
}

class _TestingState extends State<Testing> {
  bool showSpinner = false;

  final _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset('images/aahclogo.png'),
        title: TextField(
          controller: _searchController,
          // onChanged: (value) {
          //   setState(() {
          //     adglReportID = value;
          //   });
          // },

          decoration: kTextfieldDecoration.copyWith(
            hintText: 'Enter your Report ID',
            suffixIcon: IconButton(
              onPressed: () {
                if (_searchController.text.isEmpty ||
                    _searchController.text.contains(RegExp(
                        r'(\W\D)' // \W for not words and \D for non digit for more instructions check online regexp
                        //* r'(\:|\;|\{|\}|\]|\[|\$|\^|\(|\)|\\|\/|\.|\"|\=|\+|\-|\_|\@|\#|\!|\%|\*|\&)' | means or in regexp
                        ))) {
                  showDialog(
                      context: context,
                      builder: (BuildContext) {
                        return AlertDialog(
                          title: Text(
                            'Please Check your Report ID',
                            style: TextStyle(
                                color:
                                    isADark ? Colors.lightBlue : Colors.amber),
                          ),
                          content: Text(
                              'If the problem continues, Please contact us. We apologize for the inconvenience'),
                          actions: [
                            ElevatedButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text('Ok'))
                          ],
                        );
                      });
                } else {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => TestReport(
                                searchedTestId: _searchController.text,
                              )));
                }
              },
              icon: const Icon(Icons.search),
              color: Colors.red,
            ),
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: LoadingOverlay(
          isLoading: showSpinner,
          child: Column(
            children: [
              Expanded(
                child: Container(
                  child: ListView(
                    children: [
                      CarouselSlider(
                        items: [
                          Container(
                            // width: double.infinity,
                            decoration: const BoxDecoration(
                                // borderRadius: BorderRadius.all(Radius.circular(20)),
                                image: DecorationImage(
                                    image: AssetImage('images/aahc_banner.jpg'),
                                    fit: BoxFit.fill)),
                          ),
                          Container(
                            // width: double.infinity,
                            decoration: const BoxDecoration(
                                // borderRadius: BorderRadius.all(Radius.circular(20)),
                                image: DecorationImage(
                                    image: AssetImage(
                                        'images/aahc_banner_gif.gif'),
                                    fit: BoxFit.fill)),
                          ),
                          Container(
                            // width: double.infinity,
                            decoration: const BoxDecoration(
                                // borderRadius: BorderRadius.all(Radius.circular(20)),
                                image: DecorationImage(
                                    image: AssetImage(
                                        'images/aahc_banner2_gif.gif'),
                                    fit: BoxFit.fill)),
                          ),
                        ],
                        options: CarouselOptions(
                          height: 200.0,
                          viewportFraction: 1,
                          autoPlay: true,
                          enlargeCenterPage: true,
                        ),
                      ),
                      // const SizedBox(
                      //   height: 20,
                      // ),
                      Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          // height: 500,
                          child: RichText(
                            text: const TextSpan(
                              style: TextStyle(
                                fontSize: 30,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: 'Get Your Jewellery Testing Report',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.lightBlue),
                                ),
                                TextSpan(
                                  text: ' Anywhere Anytime.',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.italic,
                                    color: Colors.lightBlue,
                                    fontSize: 35,
                                  ),
                                ),
                              ],
                            ),
                          ))
                    ],
                  ),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.arrow_back_ios_new),
                            Text('Back'),
                          ],
                        )),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
