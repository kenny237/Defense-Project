import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  int duration = 0;
  Widget goToPage;

  SplashPage ({required this.goToPage, required this.duration});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: this.duration), (){
      Navigator.push(context, MaterialPageRoute(builder: (context) => this.goToPage ));
    });

    return Scaffold(
      body: Center(
          child: Image.asset("assets/images/logo-limarket-1.png")
      ),
    );
  }

}