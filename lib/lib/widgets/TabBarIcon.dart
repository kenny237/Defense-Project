import 'package:flutter/material.dart';

class TabBarIcon extends StatelessWidget {
  Color color;
  IconData icon;
  double size;

  TabBarIcon({required this.color, required this.icon, required this.size});

  @override

  Widget build(BuildContext context) {
    return
      Container(
        color: this.color,
        padding: EdgeInsets.all(10),
        child: Icon(this.icon,
          size: this.size,
        ),
      );
  }

}