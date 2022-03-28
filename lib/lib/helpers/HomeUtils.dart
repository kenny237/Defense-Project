import 'package:flutter/cupertino.dart';
import 'package:untitled4/lib/models/category.dart';
import 'package:untitled4/lib/helpers/my_flutter_app_icons.dart';
import 'my_flutter_app_icons.dart';

import 'appcolors.dart';

class HomeUtils {
  static List<Category> getMockedCategories(){
    return[
      Category( name: "Home & Kitchen",
          icon: MyIcons.food,
          color: AppColors.kitchen,
          imgName: "Home kitch appliances.jfif",
          subCategories: []),
      Category( name: "Clothing, Shoes & Jewelry",
          icon: MyIcons.t_shirt,
          color: AppColors.clothing,
          imgName: "Clothing .jpg",
          subCategories: []),
      Category( name: "Toys & Games",
          icon: MyIcons.gamepad,
          color: AppColors.Toys,
          imgName: "Toys and games.jfif",
          subCategories: []),
      Category( name: "Beauty & Personal Care",
          icon: MyIcons.shopping_bag,
          color: AppColors.Beauty,
          imgName: "Beauty and personal care.jpg",
          subCategories: []),
      Category( name: "Electronics",
          icon: MyIcons.laptop,
          color: AppColors.Electronics,
          imgName: "Electronics Devices.jfif",
          subCategories: []),
      Category( name: "Baby Care",
          icon: MyIcons.child_friendly,
          color: AppColors.Baby,
          imgName: "Baby care.jpg",
          subCategories: []),
      Category( name: "Office Products",
          icon: MyIcons.box,
          color: AppColors.office,
          imgName: "Office Products.jpg",
          subCategories: []),
      Category( name: "Garden & Outdoor",
          icon: MyIcons.wrench,
          color: AppColors.garden,
          imgName: "Garden and outdoor.png",
          subCategories: []),
    ];
  }
}