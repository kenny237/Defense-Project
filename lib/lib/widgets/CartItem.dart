import 'package:flutter/material.dart';
import 'package:untitled4/lib/models/category.dart';
import 'package:untitled4/lib/widgets/categoryicon.dart';


class CartItem extends StatelessWidget {
  String name;
  IconData icon;
  String imageName;
  String price;

  CartItem({required this.name,required this.price, required this.icon, required this.imageName});

  @override

  Widget build(BuildContext context) {
    return
      Padding(
        padding: const EdgeInsets.all(0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                  children: [
                    Container(
                      height: 125,
                      width: 125,
                      child: ClipRRect(
                      borderRadius: BorderRadius.circular(35),
                            child: Image.asset(this.imageName,
                              height: 125,
                              width: 125,
                              fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(width: 20,),
                    Container(
                      child: Column(
                        children: [
                          Text(this.name,
                            style: TextStyle(
                                color: Color(0xFF2D2A2A),
                                fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ]
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Container(
                        height: 100,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(this.price + 'FCFA',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF656464),
                                fontSize: 16,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('- 2 +',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  color: Color(0xFF656464),
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 20,),

                CategoryIcon(
                    color: Colors.transparent,
                    icon: Icons.highlight_remove_outlined,
                    size: 30,

                    ),
                  ]
              ),
            ),

          ],
        ),
      );
  }

}