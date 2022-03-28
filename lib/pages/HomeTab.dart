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

class HomeTab extends StatelessWidget{

  List <Category> categories = Utils.getMockedCategories();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        title: Container(
          height: 150,
          child: Padding(
            padding: const EdgeInsets.only(left: 40),
            child: Image.asset("assets/images/logo.png"),
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0, //remove the app bar shadow
        iconTheme: IconThemeData(color: AppColors.main_color),
        actions: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              child: Icon(MyIcons.search
              ),
            ),
          )
        ],

      ),


      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              CarouselSlider(
                items: [

                  //1st Image of Slider
                  Container(
                    margin: EdgeInsets.all(4.0),
                      child: Image.asset("assets/images/slide1.jpg",
                        height: 400,
                        width: MediaQuery.of(context).size.width,
                        fit: BoxFit.cover,
                      ),
                          decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                      )
                    ),

                  //2nd Image of Slider
                  Container(

                      margin: EdgeInsets.all(4.0),
                      child: Image.asset("assets/images/slide2.jpg",
                        height: 400,
                        width: MediaQuery.of(context).size.width,
                        fit: BoxFit.cover,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                      )
                  ),

                  //3rd Image of Slider
                  Container(
                      margin: EdgeInsets.all(4.0),
                      child: Image.asset("assets/images/slide3.jpg",
                        height: 400,
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
                  height: 180.0,
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
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 80.0,
                      child: ListView(
                          scrollDirection: Axis.horizontal,
                          children:
                          [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset("assets/images/carrefour.jpg",
                                height: 100,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset("assets/images/SuperU.png",
                                height: 100,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset("assets/images/DOVV.jfif",
                                height: 100,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset("assets/images/real DOVV.jfif",
                                height: 100,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset("assets/images/Santa lucia.jfif",
                                height: 100,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset("assets/images/afri.jfif",
                                height: 100,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset("assets/images/casino.jfif",
                                height: 100,
                              ),
                            ),
                          ]
                      ),
                    ),
                  ],
                ),
              ), //logo slider
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 1500,
                      child: Column(
                        children: [
                          Expanded(
                              child: ListView.builder(
                                  physics: NeverScrollableScrollPhysics(), // <-- this will disable scroll
                                  shrinkWrap: true,
                                  itemCount: categories.length,
                                  itemBuilder: (BuildContext ctx, int index) {
                                    return HomeCard(
                                        category: categories[index]
                                    );
                                  }
                              )
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ), //feed

            ],
          ),
        ),
      ),
    );
  }
}