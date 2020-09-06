import 'package:flutter/material.dart';
import 'package:translation_website/presentation/pages/landing_page/screens/about_page.dart';
import 'package:translation_website/presentation/pages/landing_page/screens/contact_us_page.dart';
import 'package:translation_website/presentation/pages/landing_page/screens/home_page.dart';
import 'package:translation_website/presentation/pages/landing_page/screens/prespective_page.dart';
import 'package:translation_website/presentation/pages/landing_page/screens/services_page.dart';
import 'package:translation_website/presentation/shared/appBar.dart';

class LandingPgae extends StatefulWidget {
  @override
  _LandingPgaeState createState() => _LandingPgaeState();
}

class _LandingPgaeState extends State<LandingPgae> {
  final PageController controller = PageController();

  int currentIndex = 0;
  List<String> appBarTabs = const [
    'Home',
    'About',
    'Services',
    'Pricing',
    'Contact us'
  ];
  List<Widget> pages = [
    HomePage(
      ontap: () {},
    ),
    AboutPage(),
    ServicesPage(),
    PrespectivePage(),
    ContactPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          MyAppBar(
            appBarTabs: appBarTabs,
            controller: controller,
          ),
          Expanded(
            child: PageView(
              controller: controller,
              onPageChanged: (value) {
                setState(() {
                  currentIndex = value;
                });
              },
              children: pages,
              pageSnapping: false,
              scrollDirection: Axis.vertical,
            ),
          ),
        ],
      ),
    );
  }
}
