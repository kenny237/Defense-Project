import 'package:flutter/material.dart';

class CategoryIcon extends StatelessWidget {
  Color color;
  IconData icon;
  double size;

  CategoryIcon({required this.color, required this.icon, required this.size});

  @override

  Widget build(BuildContext context) {
    return ClipOval(
                child: Container(
                  color: this.color,
                  padding: EdgeInsets.all(10),
                  child: Icon(this.icon,
                  size: this.size,
                  ),
                ),
              );
  }

}