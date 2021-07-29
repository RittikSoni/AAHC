import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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

class Faq extends StatefulWidget {
  @override
  _FaqState createState() => _FaqState();
}

class _FaqState extends State<Faq> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.pinkAccent),
        title: const Text(
          'Frequently Asked Questions',
          style: TextStyle(color: Colors.lightBlue),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: ListView.builder(
          itemCount: itemData.length,
          itemBuilder: (BuildContext context, int index) {
            return ExpansionPanelList(
              animationDuration: const Duration(milliseconds: 800),
              dividerColor: Colors.black,
              elevation: 1,
              children: [
                ExpansionPanel(
                  body: Container(
                    padding: const EdgeInsets.only(
                        top: 0, bottom: 10, left: 10, right: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        // ClipOval(
                        //   child: CircleAvatar(
                        //     child: Image.asset(
                        //       itemData[index].img,
                        //       fit: BoxFit.cover,
                        //     ),
                        //   ),
                        // ),
                        // const SizedBox(
                        //   height: 30,
                        // ),
                        Text(
                          itemData[index].discription,
                          style: const TextStyle(
                              // color: Colors.grey[700],
                              fontSize: 15,
                              letterSpacing: 0.3,
                              height: 1.3),
                        ),
                      ],
                    ),
                  ),
                  headerBuilder: (BuildContext context, bool isExpanded) {
                    return Container(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        itemData[index].headerItem,
                        style: TextStyle(
                          // color: itemData[index].colorsItem,
                          fontSize: 18,
                        ),
                      ),
                    );
                  },
                  isExpanded: itemData[index].expanded,
                )
              ],
              expansionCallback: (int item, bool status) {
                setState(() {
                  itemData[index].expanded = !itemData[index].expanded;
                });
              },
            );
          },
        ),
      ),
    );
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
      headerItem:
          '5. How much does it cost to get a silver article hallmarked?',
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
}
