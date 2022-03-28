import 'package:flutter/material.dart';
import 'package:untitled4/lib/helpers/my_flutter_app_icons.dart';
import 'package:untitled4/lib/helpers/utils.dart';
import 'package:untitled4/lib/models/category.dart';
import 'package:untitled4/lib/widgets/TabBar.dart';
import 'package:untitled4/lib/widgets/categorycard.dart';
import 'package:untitled4/lib/widgets/categoryicon.dart';
import 'package:untitled4/main.dart';
import 'package:untitled4/lib/helpers/appcolors.dart';
import 'package:untitled4/lib/widgets/CartItem.dart';
import 'package:untitled4/pages/HomePage.dart';
import 'package:untitled4/pages/ProductPage.dart';
import 'package:untitled4/pages/payment_card_collections.dart';

class CartTab extends StatelessWidget{

  List <Category> categories = Utils.getMockedCategories();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text ('CART',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: AppColors.main_color,
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0, //remove the app bar shadow
        iconTheme: IconThemeData(color: AppColors.main_color),
      ),

      body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.all(10),//To prevent box from touching page edges
              child: TextField(
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    isDense: true,
                    contentPadding: EdgeInsets.all(8),
                    labelText: 'Search Cart',
                ),
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  CartItem(
                    name: 'Jacket',
                    icon: Icons.chevron_right_outlined,
                    imageName: 'assets/images/slide1.jpg',
                    price: '5000 ',),
                  CartItem(
                    name: 'BLM \nT-shirt',
                    icon: Icons.chevron_right_outlined,
                    imageName: 'assets/images/Home5.jpg',
                    price: '5500 ',),

                  Padding(
                    padding: EdgeInsets.only(left: 60,right:60, top: 10, bottom: 10),
                    child: TextButton(
                        onPressed: ({  splashColor: Colors.transparent,
                          highlightColor: Colors.transparent,}) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) =>
                                  ProductPage()));
                        },
                        style: TextButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50)
                          ),
                          backgroundColor: Colors.white,
                          padding: EdgeInsets.all(15),

                        ),
                        child: Text('',
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
            ),



            Padding(
              padding: EdgeInsets.only(left: 60,right:60, top: 10, bottom: 10),
              child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>
                            PaymentCardCollectionsRoute()));
                  },
                  style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)
                    ),
                    backgroundColor: Color(0xFF1A3682),
                    padding: EdgeInsets.all(15),

                  ),
                  child: Text('C H E C K  O U T',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                    ),
                  )
              ),
            ),

          ]
      ),
    );
  }
}

