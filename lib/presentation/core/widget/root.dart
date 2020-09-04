import 'package:flutter/material.dart';
import 'package:translation_website/presentation/pages/landing_page/landing_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Website',
      home: LandingPgae(),
    );
  }
}
