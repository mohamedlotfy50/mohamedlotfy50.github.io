import 'package:flutter/material.dart';
import 'package:translation_website/presentation/core/const/images.dart';
import 'package:translation_website/presentation/pages/landing_page/widgets/landing_text.dart';
import 'package:translation_website/presentation/shared/layout_builder.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyLayOutBuilder(
      web: Container(
        padding: EdgeInsets.symmetric(horizontal: 30),
        color: Color(0XFF746FFF),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            LandingText(
              flex: 1,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              rowMainAxisAlignment: MainAxisAlignment.start,
              onPress: () {},
              textAlign: TextAlign.left,
            ),
            Expanded(
              child: Image.asset(
                translationImage,
              ),
            ),
          ],
        ),
      ),
      mobile: Container(
        padding: EdgeInsets.symmetric(horizontal: 30),
        color: Color(0XFF746FFF),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 1,
              child: Image.asset(
                translationImage,
              ),
            ),
            LandingText(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              rowMainAxisAlignment: MainAxisAlignment.center,
              onPress: () {},
              textAlign: TextAlign.center,
              flex: 2,
            ),
          ],
        ),
      ),
    );
  }
}
