import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:translation_website/presentation/pages/landing_page/widgets/services_card.dart';
import 'package:translation_website/presentation/pages/landing_page/widgets/shadow_text.dart';
import 'package:translation_website/presentation/shared/layout_builder.dart';

class ServicesPage extends StatelessWidget {
  const ServicesPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFA2B0FA).withOpacity(0.35),
      child: MyLayOutBuilder(
        web: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                ShadowTextTitle(
                  title: 'Services',
                  width: 200,
                ),
                Text('some description for the website'),
              ],
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
        mobile: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                ShadowTextTitle(
                  title: 'Services',
                  width: 200,
                ),
                Text('some description for the website'),
              ],
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
