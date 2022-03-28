import 'package:flutter/material.dart';
import 'package:untitled4/lib/helpers/my_flutter_app_icons.dart';
import 'package:untitled4/lib/helpers/utils.dart';
import 'package:untitled4/lib/models/category.dart';
import 'package:untitled4/lib/widgets/TabBar.dart';
import 'package:untitled4/lib/widgets/categorycard.dart';
import 'package:untitled4/lib/widgets/categoryicon.dart';
import 'package:untitled4/main.dart';
import 'package:untitled4/lib/helpers/appcolors.dart';

import 'SignUp.dart';

class FavoritesTab extends StatelessWidget{

  List <Category> categories = Utils.getMockedCategories();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text ('FAVORITES',
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
          TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignUp() ));
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.transparent,
                ),
                child: Container(
                  alignment: Alignment.centerLeft,// wrap in a container and use this to align button text
                  child: Text('ADD FAVORITES',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                )
            ),
          Expanded(
              child: ListView.builder(
                  itemCount: categories.length,
                  itemBuilder: (BuildContext ctx, int index) {
                    return CategoryCard(
                        category: categories[index]
                    );
                  }
              )
          ),
        ],
      ),
    );
  }
}