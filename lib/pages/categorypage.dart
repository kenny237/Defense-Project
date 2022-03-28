import 'package:flutter/material.dart';
import 'package:untitled4/lib/helpers/my_flutter_app_icons.dart';
import 'package:untitled4/lib/helpers/utils.dart';
import 'package:untitled4/lib/models/category.dart';
import 'package:untitled4/lib/widgets/TabBar.dart';
import 'package:untitled4/lib/widgets/categorycard.dart';
import 'package:untitled4/lib/widgets/categoryicon.dart';
import 'package:untitled4/main.dart';
import 'package:untitled4/lib/helpers/appcolors.dart';

class CategoryListPage extends StatelessWidget{

  List <Category> categories = Utils.getMockedCategories();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 60, bottom: 1),
              child: Text('Categories',
                textAlign: TextAlign.center,
                style: TextStyle(color: AppColors.main_color, fontSize: 18, fontWeight: FontWeight.bold ),
              ),
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
      ),
    );
  }
}
