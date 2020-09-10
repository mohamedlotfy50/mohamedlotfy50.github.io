import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:translation_website/presentation/pages/landing_page/widgets/services_card.dart';
import 'package:translation_website/presentation/pages/landing_page/widgets/shadow_text.dart';
import 'package:translation_website/presentation/shared/layout_builder.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyLayOutBuilder(
      web: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              children: [
                ShadowTextTitle(
                  title: 'About us',
                  width: 260,
                  height: 80,
                ),
                Container(
                  width: MediaQuery.of(context).size.width - 270,
                  child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Mirza',
                      fontSize: 19,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 170,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ServiceCard(),
                ServiceCard(),
                ServiceCard(),
                ServiceCard(),
              ],
            ),
          ],
        ),
      ),
      mobile: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              children: [
                ShadowTextTitle(
                  title: 'About us',
                  width: 260,
                  height: 80,
                ),
                Container(
                  width: MediaQuery.of(context).size.width - 30,
                  child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Mirza',
                      fontSize: 19,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  ServiceCard(),
                  ServiceCard(),
                  ServiceCard(),
                  ServiceCard(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
