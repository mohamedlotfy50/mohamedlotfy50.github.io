import 'dart:ui';

import 'package:flutter/material.dart';

class ShadowTextTitle extends StatelessWidget {
  final String title;
  final double width;
  final double height;
  const ShadowTextTitle({
    Key key,
    this.title,
    this.width,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      child: Stack(
        children: [
          Positioned(
            top: 10,
            left: 20,
            child: Text(
              title,
              style: TextStyle(
                fontSize: 50,
                color: Color(0XFF0F0E47).withOpacity(0.5),
              ),
            ),
          ),
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 1, sigmaY: 1),
            child: Text(
              title,
              style: TextStyle(
                fontFamily: 'Reem Kufi',
                fontWeight: FontWeight.bold,
                fontSize: 50,
                color: Color(0XFF0F0E47).withOpacity(0.9),
              ),
            ),
          )
        ],
      ),
    );
  }
}
