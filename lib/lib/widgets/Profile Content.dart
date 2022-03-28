import 'package:flutter/material.dart';
import 'package:untitled4/lib/models/category.dart';
import 'package:untitled4/lib/widgets/categoryicon.dart';


class ProfileContent extends StatelessWidget {
  String text;
  IconData icon;

  ProfileContent({required this.text, required this.icon});

  @override

  Widget build(BuildContext context) {
    return
             Padding(
                padding: const EdgeInsets.all(0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [CategoryIcon(
                          color: Color(0x48355AA0),
                          icon: this.icon,
                          size: 15),
                      SizedBox(width: 10,),
                      Text(this.text,
                        style: TextStyle(
                            color: Color(0xFF2D2A2A),
                            fontSize: 18
                        ),
                      ),
                      ]
                    ),
                    CategoryIcon(
                        color: Colors.transparent,
                        icon: Icons.keyboard_arrow_right,
                        size: 15)
                  ],
                ),
              );
    }

}