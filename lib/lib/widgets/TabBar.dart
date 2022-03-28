import 'package:flutter/material.dart';

class tabBar extends StatelessWidget {
  IconData icon1;
  IconData icon2;
  IconData icon3;
  IconData icon4;
  Color color;

  tabBar({required this.icon1, required this.icon2, required this.icon3, required this.icon4, required this.color});

  @override

  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: TabBar(
          tabs: [
            Tab(icon: Icon(icon1)),
            Tab(icon: Icon(icon2)),
            Tab(icon: Icon(icon3)),
            Tab(icon: Icon(icon4))
          ],
          labelColor: color,

        )
    );
  }

}