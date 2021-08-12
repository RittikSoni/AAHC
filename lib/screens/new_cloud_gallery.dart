import 'dart:io';

import 'package:aahc/models/gallery_images_info.dart';
import 'package:aahc/screens/cloud_gallery_details.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:loading_overlay/loading_overlay.dart';

class CloudGallery extends StatefulWidget {
  const CloudGallery({Key? key}) : super(key: key);

  @override
  State<CloudGallery> createState() => _CloudGalleryState();
}

class _CloudGalleryState extends State<CloudGallery> {
  @override
  void initState() {
    loading();
    super.initState();
  }

  final _fireStore = FirebaseFirestore.instance;
  List<GImages> listGImages = [];
  final _gimgname = TextEditingController();
  File? _imageFile;
  String? docId;
  bool showSpinner = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
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
                      image: AssetImage('images/aahc_banner_gif.gif'),
                      fit: BoxFit.fill)),
            ),
            Container(
              // width: double.infinity,
              decoration: const BoxDecoration(
                  // borderRadius: BorderRadius.all(Radius.circular(20)),
                  image: DecorationImage(
                      image: AssetImage('images/aahc_banner2_gif.gif'),
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
        const SizedBox(
          height: 20,
        ),
        Expanded(
          child: Container(
            child: LoadingOverlay(
              isLoading: showSpinner,
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemCount: listGImages.length,
                itemBuilder: (BuildContext context, int index) {
                  return RawMaterialButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CloudGalleryDetails(
                            imageUrl: listGImages[index].gImgUrl!,
                            title: listGImages[index].name!,
                            index: index,
                          ),
                        ),
                      );
                    },
                    child: Hero(
                      tag: 'gallery$index',
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                              image: NetworkImage(listGImages[index].gImgUrl!),
                              fit: BoxFit.fill),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ],
    ));
  }

  Future<void> loading() async {
    QuerySnapshot querySnapshot = await _fireStore
        .collection('gallery')
        .orderBy('timestamp', descending: true)
        .get();

    // Get data from docs and convert map to List
    // final allData =
    //     querySnapshot.docs.map((doc) => doc.get('imageURL')).toList();
    final allData2 = querySnapshot.docs.map((doc) => doc.data()).toList();
    for (var data in querySnapshot.docs) {
      setState(() {
        showSpinner = false;
        docId = data.id;
        listGImages.add(
            GImages(gImgUrl: data.get('imageURL'), name: data.get('name')));
      });
    }

    // for (var rs in allData) {
    //   setState(() {
    //     listGImages.add(
    //       (GImages(
    //         gImgUrl: rs.toString(),
    //       )),
    //     );
    //   });
    // }
  }
}
