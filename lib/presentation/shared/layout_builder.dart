import 'package:flutter/material.dart';

class MyLayOutBuilder extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget web;
  const MyLayOutBuilder({
    Key key,
    this.mobile,
    this.tablet,
    this.web,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 950) {
          return web;
        } else if (constraints.maxWidth > 600) {
          return tablet ?? mobile;
        }
        return mobile;
      },
    );
  }
}
