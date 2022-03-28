import 'package:flutter/material.dart';
import 'package:untitled4/lib/helpers/appcolors.dart';
import 'package:untitled4/lib/helpers/my_flutter_app_icons.dart';
import 'package:untitled4/lib/widgets/TabBarIcon.dart';
import 'package:untitled4/lib/widgets/categoryicon.dart';
import 'package:untitled4/pages/CartTab.dart';
import 'package:untitled4/pages/FavoritesTab.dart';
import 'package:untitled4/pages/HomeTab.dart';
import 'package:untitled4/pages/ProfileTab.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState(); //private class
  }
}// statefull because Home widget will render a different widget based on what tab is currently selected

class _HomeState extends State<Home> {
  int index = 0; //first screen is 0 cuz user initial index is 0
  List<Widget> _widgets = [screen1(), screen2(), screen3(), screen4()];
  tapped(int tappedIndex) {
    setState(() {index = tappedIndex;});
  }
  @override Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: Drawer(),
        body: _widgets[index], //body is going to be one of the widgets, depending on the selected bottom navigation bar item.
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: index, //index of currently displayed tab
          onTap: tapped, //keeps track of currently displayed widget
          items: [
            BottomNavigationBarItem(icon: Icon(MyIcons.home_outline), label: ''),
            BottomNavigationBarItem(icon: Icon(MyIcons.basket), label: ''),
            BottomNavigationBarItem(icon: Icon(MyIcons.heart, size: 20,), label: ''),
            BottomNavigationBarItem(icon: Icon(MyIcons.user), label: ''),
          ],
          unselectedItemColor: AppColors.main_color,
          selectedItemColor: Color(0xFF345BA1),


        ),
      ),
    );
  }
}
screen1() {
  return HomeTab();
}
screen2() {
  return CartTab();
}
screen3() {
  return FavoritesTab();
}
screen4() {
  return ProfileTab();
}