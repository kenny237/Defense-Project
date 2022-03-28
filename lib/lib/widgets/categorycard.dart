import 'package:flutter/material.dart';
import 'package:untitled4/lib/models/category.dart';
import 'package:untitled4/lib/widgets/categoryicon.dart';


class CategoryCard extends StatelessWidget {
  Category category;

  CategoryCard({required this.category});

  @override

  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      height: 150,
      child: Stack(
        children: [
          Positioned.fill(
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset('assets/images/'+ this.category.imgName,
                    fit: BoxFit.cover,
                  )
              )
          ),
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 120,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20)
                    ),
                    gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          Colors.black.withOpacity(0.7),
                          Colors.transparent
                        ]
                    )
                ),
              )//For image to fill the area provided by the stack
          ),
          Positioned(
              bottom: 0,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    CategoryIcon(
                        color: this.category.color,
                        icon: this.category.icon,
                        size: 30),
                    SizedBox(width: 10,),
                    Text(this.category.name,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20
                      ),
                    )
                  ],
                ),
              )
          )
        ],
      ),
    );


  }

}