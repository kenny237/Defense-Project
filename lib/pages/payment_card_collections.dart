import 'dart:core';

import 'package:flutter/material.dart';
import 'package:untitled4/lib/helpers/appcolors.dart';
import 'package:untitled4/pages/CartTab.dart';
import 'package:untitled4/pages/Transaction%20Review.dart';


class PaymentCardCollectionsRoute extends StatefulWidget {

  PaymentCardCollectionsRoute();

  @override
  PaymentCardCollectionsRouteState createState() => new PaymentCardCollectionsRouteState();
}


class PaymentCardCollectionsRouteState extends State<PaymentCardCollectionsRoute> {

  int page = 0;
  static const int MAX = 4;

  static const List<String> postfix_array = [
    "**** **** **** 6223", "**** **** **** 1027",
    "**** **** **** 5519", "**** **** **** 4661"
  ];

  static const List<String> expire_array = [
    "08/20", "11/23", "05/19", "06/25"
  ];

  static const List<String> cvv_array = [
    "771", "098", "334", "558"
  ];

  static const List<String> logo_array = [
    "ic_visa_new.png", "ic_mastercard_new.png", "ic_mastercard_new.png", "ic_visa_new.png"
  ];


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(preferredSize: Size.fromHeight(0), child: Container()),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Container(height: 5),
            Row(
              children: <Widget>[
                IconButton(
                  icon: const Icon(Icons.chevron_left, color:AppColors.main_color),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                Spacer(),
                Text("C H E C K  O U T", style: TextStyle(
                    color: AppColors.main_color, fontWeight: FontWeight.bold
                )),
                Spacer(),
                IconButton(
                  icon: const Icon(Icons.done, color: AppColors.main_color),
                  onPressed: () {},
                )
              ],
            ),
            Container(
              height: 230,
              child: PageView(
                children: <Widget>[
                  getCardItem(0), getCardItem(1),
                  getCardItem(2), getCardItem(3),
                ],
                onPageChanged: onPageViewChange,
                controller: PageController(
                  viewportFraction: 0.9,
                  initialPage: 0,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(15),
              child: Align(
                alignment: Alignment.center,
                child: buildDots(context),
              ),
            ),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Amount", style: TextStyle(
                    color: Colors.grey[800],
                  )),
                  Container(

                    child: TextField(
                      keyboardType: TextInputType.text,
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  Container(height: 15),
                  Text("Remark", style: TextStyle(
                    color: Colors.grey[800],
                  )),
                  TextField(
                    keyboardType: TextInputType.text,
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              ),
            ),

            Container(height: 100),

            Padding(
              padding: EdgeInsets.only(left: 60,right:60, top: 10, bottom: 10),
              child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>
                          TransactionReview()));
                  },
                  style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)
                    ),
                    backgroundColor: Color(0xFF1A3682),
                    padding: EdgeInsets.all(15),

                  ),
                  child: Text('P R O C E E D',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                    ),
                  )
              ),
            ),
          ],
        ),
      )
    );
  }

  Widget getCardItem(int index){
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 6, vertical: 10),
      child: Card(
        shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(10)),
        color: AppColors.main_color,
        elevation: 2,
        margin: EdgeInsets.all(0),
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 120, top: 30, bottom: 10),
              child: Image.asset('assets/images/ic_mastercard_new.png'),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Spacer(),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 4),
                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.8),
                            borderRadius: new BorderRadius.all(Radius.circular(4))
                        ),
                        width: 50, height: 30,
                        child: Image.asset( 'assets/images/ic_copper_card.png' , fit: BoxFit.cover),
                      )
                    ],
                  ),
                  Container(height: 10),
                  Text(postfix_array[index], style: TextStyle(
                      color: Colors.white, fontFamily: "monospace"
                  )),
                  Container(height: 10),
                  Row(
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("EXPIRE", style: TextStyle(color: Colors.grey)),
                          Container(height: 5),
                          Text(expire_array[index], style: TextStyle(
                              color: Colors.white, fontFamily: "monospace"
                          )),
                        ],
                      ),
                      Container(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("CVV", style: TextStyle(color: Colors.grey)),
                          Container(height: 5),
                          Text(cvv_array[index], style: TextStyle(
                              color: Colors.white, fontFamily: "monospace"
                          )),
                        ],
                      ),
                      Container(width: 40)
                    ],
                  ),

                  Container(height: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("NICK NAME", style: TextStyle(color: Colors.grey)),
                      Container(height: 5),
                      Text("Anderson Thomas", style: TextStyle(
                          color: Colors.white, fontFamily: "monospace"
                      )),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }


  void onPageViewChange(int _page) {
    page = _page;
    setState(() {});
  }

  Widget buildDots(BuildContext context){
    Widget widget;
    List<Widget> dots = [];
    for(int i=0; i<MAX; i++){
      Widget w = Container(
        margin: EdgeInsets.symmetric(horizontal: 5),
        height: 8,
        width: 8,
        child: CircleAvatar(
          backgroundColor: page == i ? AppColors.kitchen : Colors.grey[300],
        ),
      );
      dots.add(w);
    }
    widget = Row(
      mainAxisSize: MainAxisSize.min,
      children: dots,
    );
    return widget;
  }

}

