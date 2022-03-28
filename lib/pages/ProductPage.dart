import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:untitled4/lib/helpers/my_flutter_app_icons.dart';
import 'package:untitled4/lib/helpers/utils.dart';
import 'package:untitled4/lib/models/category.dart';
import 'package:untitled4/lib/widgets/HomeCard.dart';
import 'package:untitled4/lib/widgets/TabBar.dart';
import 'package:untitled4/lib/widgets/categorycard.dart';
import 'package:untitled4/lib/widgets/categoryicon.dart';
import 'package:untitled4/main.dart';
import 'package:untitled4/lib/helpers/appcolors.dart';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:untitled4/pages/CartTab.dart';

import 'HomePage.dart';

class ProductPage extends StatelessWidget {
  int price = 5500;
  int quantity = 1;
  late String holder;
  late String quantityHolder;

  @override
  Widget build(BuildContext context) {
    holder = price.toString();
    quantityHolder = quantity.toString();
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'BLM T-SHIRT',
            style: TextStyle(
              color: AppColors.main_color,
            ),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          //remove the app bar shadow
          iconTheme: IconThemeData(color: AppColors.main_color),
          actions: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                child: Icon(MyIcons.basket),
              ),
            )
          ],
        ),
        body: Column(children: [
          Expanded(
            child: SingleChildScrollView(
              child: Expanded(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      CarouselSlider(
                        items: [
                          //1st Image of Slider
                          Container(
                              margin: EdgeInsets.all(4.0),
                              child: Image.asset(
                                "assets/images/Home5.jpg",
                                width: MediaQuery.of(context).size.width,
                                fit: BoxFit.cover,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                              )),

                          //2nd Image of Slider
                          Container(
                              margin: EdgeInsets.all(4.0),
                              child: Image.asset(
                                "assets/images/home1.png",
                                width: MediaQuery.of(context).size.width,
                                fit: BoxFit.cover,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                              )),

                          //3rd Image of Slider
                          Container(
                              margin: EdgeInsets.all(4.0),
                              child: Image.asset(
                                "assets/images/BLM4.jpg",
                                width: MediaQuery.of(context).size.width,
                                fit: BoxFit.cover,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                              )),
                        ],

                        //Slider Container properties
                        options: CarouselOptions(
                          height: 200.0,
                          enlargeCenterPage: false,
                          autoPlay: true,
                          aspectRatio: 16 / 9,
                          autoPlayCurve: Curves.fastOutSlowIn,
                          enableInfiniteScroll: true,
                          autoPlayAnimationDuration: Duration(seconds: 1),
                          viewportFraction: 0.8,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Black Lives Matter T-shirt',
                            style: TextStyle(
                              color: Color(0xFF071744),
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                            ),
                          ),
                        ),
                      ), //Product Title
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          'Open your door to the black lives matter movement with this High quality t-shirt. This is a bella + canvas soft t-shirt. Easy to clean with warm water... Welcome to the BlackLivesMatter family.',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ), //product Description
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text(
                              'Details',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                              ),
                            ), //Details (title)
                            Divider(color: Colors.black),
                            Text(
                              'Sizes:  ' +
                                  ' S ' +
                                  ' M ' +
                                  ' L ' +
                                  ' XL ' +
                                  ' XXL ',
                              style: TextStyle(
                                fontSize: 20,
                                color: Color(0xFF56595F),
                              ),
                            ), //Sizes
                            Divider(color: Colors.black),
                            Text(
                              'Colors:  ' + ' Black ' + '|' + ' White ',
                              style: TextStyle(
                                fontSize: 20,
                                color: Color(0xFF56595F),
                              ),
                            ),
                          ],
                        ),
                      ), //Product Details
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 40, right: 40, top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'PRICE: \n \n' + holder + ' FCFA',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: AppColors.main_color,
                              ),
                            ),
                            Text(
                              'QTY: \n \n' +
                                  '  -   ' +
                                  quantityHolder +
                                  '   + ',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: AppColors.main_color,
                              ),
                            )
                          ],
                        ),
                      ), //price & quantity
                      SizedBox(
                        height: 45,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Other Products',
                            style: TextStyle(
                              color: Color(0xFF071744),
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                            ),
                          ),
                        ),
                      ), //Other Products (title)
                      Divider(color: Colors.black),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: 150,
                              child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        children: [
                                          Image.asset(
                                            "assets/images/Home2.jfif",
                                            height: 100,
                                          ),
                                          Text('BLM Dress')
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        children: [
                                          Image.asset(
                                            "assets/images/Home6.jfif",
                                            height: 100,
                                          ),
                                          Text('Black T-Shirt')
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        children: [
                                          Image.asset(
                                            "assets/images/BLM2.jfif",
                                            height: 100,
                                          ),
                                          Text('BLM Women\'s T-Shirt')
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        children: [
                                          Image.asset(
                                            "assets/images/BLM3.png",
                                            height: 100,
                                          ),
                                          Text('Women\'s T-Shirt')
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        children: [
                                          Image.asset(
                                            "assets/images/Home7.jfif",
                                            height: 100,
                                          ),
                                          Text('White T-Shirt')
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        children: [
                                          Image.asset(
                                            "assets/images/BLM1.jfif",
                                            height: 100,
                                          ),
                                          Text('BLM White T-Shirt')
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        children: [
                                          Image.asset(
                                            "assets/images/Home8.jfif",
                                            height: 100,
                                          ),
                                          Text('Long Sleeve T-Shirt')
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.chevron_right_outlined,
                                            size: 40,
                                          ),
                                          Text('')
                                        ],
                                      ),
                                    ),
                                  ]),
                            ),
                          ],
                        ),
                      ), //other products
                      SizedBox(
                        height: 30,
                      ),
                    ]),
              ),
            ),
          ),
          Body(),
        ]));
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
            margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CartTab()
                              )
                          );
                        },
                        child: Container(
                            padding: const EdgeInsets.only(left: 10),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(children: [
                                    CategoryIcon(
                                        color: Color(0x48355AA0),
                                        icon: MyIcons.basket,
                                        size: 15),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'ADD TO CART',
                                      style: TextStyle(
                                          color: Color(0xFF2D2A2A),
                                          fontSize: 18),
                                    ),
                                  ]
                                  ),
                                ],
                              ),
                            ),
                            decoration: BoxDecoration(
                                color: Colors.transparent,
                                border: Border.all(
                                    color: Colors.transparent, width: 4)
                            )
                        )
                    )
                )
            )
        )
    );
  }
}
