import 'package:flutter/material.dart';
import 'package:translation_website/presentation/core/const/images.dart';
import 'package:translation_website/presentation/shared/layout_builder.dart';
import 'package:translation_website/presentation/shared/logo.dart';
import 'package:translation_website/presentation/shared/nav_routs.dart';

class MyAppBar extends StatelessWidget {
  final PageController controller;
  final Widget logo = const Logo(
    assetLocation: translationImage,
    name: 'LOGO',
    size: 30,
  );
  const MyAppBar({
    Key key,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyLayOutBuilder(
      web: Container(
        color: Color(0XFF0F0E47),
        height: 75,
        padding: EdgeInsets.symmetric(horizontal: 30),
        alignment: Alignment.center,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            logo,
            Spacer(),
            NavRouts(
              controller: controller,
            ),
          ],
        ),
      ),
      mobile: Container(
        color: Color(0XFF0F0E47),
        height: 130,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                logo,
              ],
            ),
            Container(
              height: 50,
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: NavRouts(
                controller: controller,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
