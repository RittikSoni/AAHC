import 'package:flutter/material.dart';

bool isADark = false;

class kAnimatedColors {
  static const colorizeColors = [
    Colors.purple,
    Colors.blue,
    Colors.yellow,
    Colors.red,
  ];
}

const List<String> fontFamily = [
  'Dancing Script',
  'PT Serif',
  'Pacifico',
  'Major Mono Display',
  'Syne Mono'
];

const kMessageContainerDecoration = BoxDecoration(
  border: Border(
    top: BorderSide(color: Colors.lightBlueAccent, width: 2.0),
  ),
);

const kSendButtonTextStyle = TextStyle(
  color: Colors.lightBlueAccent,
  fontWeight: FontWeight.bold,
  fontSize: 18.0,
);
ButtonStyle kbuttonStyle = TextButton.styleFrom(
  primary: Colors.black,
  backgroundColor: Colors.white,
  shadowColor: Colors.amber,
  elevation: 5,
);

const kTextfieldDecoration = InputDecoration(
  hintText: 'Subject',
  // hintStyle: TextStyle(color: Colors.amber),
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.lightBlueAccent, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.lightBlueAccent, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
);

// InputDecoration(
//     border:
//         OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(50))),
//     labelText: 'Subject');
class ItemModel {
  bool expanded;
  String headerItem;
  String discription;
  // Color colorsItem;
  // String img;

  ItemModel({
    this.expanded: false,
    this.headerItem = 'why',
    this.discription = 'dis',
    // this.colorsItem = Colors.purpleAccent,
    // this.img
  });
}

List<ItemModel> itemData = <ItemModel>[
  ItemModel(
    headerItem: '1.What is Hallmarking?',
    discription:
        "Hallmarking is the accurate determination and official recording of the proportionate content of precious metal in precious metal articles. Hallmarks are thus official marks used in India as a guarantee of purity or fineness of precious metal articles",
    // colorsItem: Colors.lightBlueAccent,
    // img: 'images/bis.png'
  ),
  ItemModel(
    headerItem: '2.Which precious metals are hallmarked in India?',
    discription:
        "In India, at present two precious metals namely gold and silver have been brought under the purview of Hallmarking.",
    // colorsItem: Colors.deepOrange,
  ),
  ItemModel(
    headerItem: '3.What are the Indian Standards on Hallmarking?',
    discription:
        "IS 1417: 2016 Gold and Gold Alloys, Jewellery/Artefacts-Fineness and Marking- Specification\nIS 2112:2014 Silver and Silver Alloys, Jewellery/Artefacts-Fineness and Marking- Specification\nIS 15820: 2009 General Requirements for establishment and operation of Assaying and operation of Assaying and Hallmarking centres.\nIS 1418: 2009 Determination of gold in gold bullion, gold alloys and gold jewellery/artefacts-cupellation( Fire Assay) Method\nIS 2113: 2014 Assaying Silver in Silver and Silver Alloys-Methods.",
    // colorsItem: Colors.deepOrange,
  ),
  ItemModel(
    headerItem: '4. How much does it cost to get a gold article hallmarked?',
    discription:
        "Following hallmarking charges are applicable:\n»   Rs. 35/- per article\n»   Minimum charges for a consignment shall be Rs. 200/- . (Services Tax and other levies as applicable shall be extra)",
    // colorsItem: Colors.deepOrange,
  ),
  ItemModel(
    headerItem: '5. How much does it cost to get a silver article hallmarked?',
    discription:
        "Following hallmarking charges are applicable\n»  Rs.25/-per article\n»  Minimum charges per consignment is Rs 150.00. (Services Tax and other levies as applicable shall be extra)",
    // colorsItem: Colors.deepOrange,
  ),
  ItemModel(
    headerItem: '7. What should be looked at in a jewellery shop?',
    discription:
        "On the outside of the sales outlet, the registered jeweller shall display the logo of BIS with the wording “Hallmarked jewellery available for sale” .Certificate of registration issued by BIS shall be displayed by the jeweller in a jewellery shop. Jeweller shall have magnifying glass of minimum 10X magnification to show hallmark to customer in the hallmarked jewellery. Relation of fineness with caratage shall be displayed by the jeweller.",
    // colorsItem: Colors.deepOrange,
  ),
  ItemModel(
    headerItem:
        '6. What are the details the jeweller has to mention in the bill issued to the purchaser?',
    discription:
        "Description of each article, net weight of precious metal, purity in carat and fineness, and hallmarking charges need to be mentioned in the bill or invoice of sale of hallmarked precious metal articles. It is also mentioned that “the consumer can get the purity of the hallmarked jewellery/artefacts verified from any of the BIS recognized A&H centre”.",
    // colorsItem: Colors.deepOrange,
  ),
  ItemModel(
    headerItem:
        '8. Is it necessary to have hallmarking on both the articles/jewellery in pairs and on all detachable parts?',
    discription:
        "Each article in pair should have hallmark. Customer should look for hallmarking and fineness details in each article to prevent any misuse w.r.t fineness/purity..",
    // colorsItem: Colors.deepOrange,
  ),
];
