import 'package:flutter/material.dart';
import 'package:translation_website/presentation/pages/landing_page/screens/about_page.dart';
import 'package:translation_website/presentation/pages/landing_page/screens/contact_us_page.dart';
import 'package:translation_website/presentation/pages/landing_page/screens/home_page.dart';
import 'package:translation_website/presentation/pages/landing_page/screens/pricing_page.dart';
import 'package:translation_website/presentation/pages/landing_page/screens/services_page.dart';
import 'package:translation_website/presentation/shared/appBar.dart';

class LandingPgae extends StatefulWidget {
  @override
  _LandingPgaeState createState() => _LandingPgaeState();
}

class _LandingPgaeState extends State<LandingPgae> {
  final PageController controller = PageController(initialPage: 0);

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          MyAppBar(
            controller: controller,
          ),
          Expanded(
            child: PageView(
              allowImplicitScrolling: true,
              controller: controller,
              onPageChanged: (value) {
                setState(() {
                  currentIndex = value;
                });
              },
              children: [
                HomePage(),
                AboutPage(),
                ServicesPage(),
                PricingPgae(),
                ContactPage(),
              ],
              pageSnapping: false,
              scrollDirection: Axis.vertical,
            ),
          ),
        ],
      ),
    );
  }
}
