import 'package:flutter/material.dart';
import 'package:translation_website/presentation/shared/appBar.dart';

class LandingPgae extends StatefulWidget {
  LandingPgae({Key key}) : super(key: key);

  @override
  _LandingPgaeState createState() => _LandingPgaeState();
}

class _LandingPgaeState extends State<LandingPgae> {
  List<String> appBarTabs = const [
    'الرئيسية',
    'من نحن',
    'الخدمات',
    'رؤيتنا',
    'تواصل معنا',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        appBarTabs: appBarTabs,
      ),
      body: PageView(
        children: [
          Container(
            color: Colors.red,
            child: Center(
              child: Text('first page'),
            ),
          ),
          Container(
            color: Colors.blue,
            child: Center(
              child: Text('second page'),
            ),
          ),
          Container(
            color: Colors.green,
            child: Center(
              child: Text('Third page'),
            ),
          ),
        ],
        pageSnapping: false,
        scrollDirection: Axis.vertical,
      ),
    );
  }
}
