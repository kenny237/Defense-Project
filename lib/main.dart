import 'package:flutter/material.dart';
import 'package:untitled4/pages/About_us.dart';
import 'package:untitled4/pages/CartTab.dart';
import 'package:untitled4/pages/Login.dart';
import 'package:untitled4/pages/ProductPage.dart';

import 'package:untitled4/pages/ProfileTab.dart';
import 'package:untitled4/pages/SignUp.dart';
import 'package:untitled4/pages/WelcomePage.dart';
import 'package:untitled4/pages/categorypage.dart';
import 'package:untitled4/pages/contact_us.dart';
import 'package:untitled4/pages/payment_card_collections.dart';

import 'package:untitled4/pages/splashpage.dart';
import 'package:untitled4/pages/HomePage.dart';
import 'package:untitled4/src/screens/home/home_screen.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SplashPage(duration: 3, goToPage:WelcomePage(),),
    )
  );
}




