import 'package:flutter/material.dart';

class NavRouts extends StatelessWidget {
  final List<String> appBarTabs = const [
    'Home',
    'About',
    'Services',
    'Pricing',
    'Contact us'
  ];
  final PageController controller;
  NavRouts({
    Key key,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemCount: appBarTabs.length,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: () {
            controller.animateToPage(index,
                duration: Duration(seconds: 2),
                curve: Curves.fastLinearToSlowEaseIn);
          },
          child: Padding(
            padding: EdgeInsets.only(
                left: index == 0 ? 0 : 10,
                right: index == appBarTabs.length - 1 ? 0 : 20,
                top: 20),
            child: Text(
              appBarTabs[index],
              style: TextStyle(
                fontWeight: FontWeight.w400,
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ),
        );
      },
    );
  }
}
