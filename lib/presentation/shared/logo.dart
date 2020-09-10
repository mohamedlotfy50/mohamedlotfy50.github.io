import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  final String assetLocation;
  final String name;
  final double size;
  const Logo({
    Key key,
    this.assetLocation,
    this.name,
    this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundColor: Colors.white,
          radius: size,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(assetLocation),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          name,
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
        ),
      ],
    );
  }
}
