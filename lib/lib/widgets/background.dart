import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BackGround extends StatelessWidget {
  String name;

  BackGround({required this.name});

  @override

  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
            children: [
        Positioned.fill(
        child: Opacity(
        opacity: 1,
            child: SvgPicture.asset(this.name,
              fit: BoxFit.cover,)
        )
        ),

        ]
        )
    );
  }

}