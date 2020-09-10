import 'package:flutter/material.dart';

class MyRoundButton extends StatelessWidget {
  final double width;
  final double height;
  final Color buttonColor;
  final Color textColor;
  final String text;
  final Function() onPress;
  const MyRoundButton({
    Key key,
    this.width,
    this.height,
    this.buttonColor,
    this.textColor,
    this.text,
    this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: RaisedButton(
        color: Color(0XFF0F0E47),
        onPressed: onPress,
        child: Text(
          text,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      ),
    );
  }
}
