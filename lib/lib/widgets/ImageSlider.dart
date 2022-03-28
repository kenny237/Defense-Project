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

class ImageSlider extends StatelessWidget {
  String imageName;

  double sliderHeight;

  int duration;

  ImageSlider({required this.imageName, required this.sliderHeight, required this.duration});

  @override

  Widget build(BuildContext context) {

    return
      CarouselSlider(
        items: [

          //1st Image of Slider
          Container(
              margin: EdgeInsets.all(4.0),
              child: Image.asset(this.imageName,

                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
              )
          ),

        ],

        //Slider Container properties
        options: CarouselOptions(
          height: this.sliderHeight,
          enlargeCenterPage: false,
          autoPlay: true,
          aspectRatio: 16 / 9,
          autoPlayCurve: Curves.fastOutSlowIn,
          enableInfiniteScroll: true,
          autoPlayAnimationDuration: Duration(seconds: this.duration),
          viewportFraction: 0.8,
        ),
      );

  }

}