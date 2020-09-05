import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  final List<String> appBarTabs;
  final PageController controller;
  const MyAppBar({Key key, this.appBarTabs, this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 65,
      padding: EdgeInsets.symmetric(horizontal: 30),
      alignment: Alignment.bottomCenter,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.black,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'Logo',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ],
          ),
          Spacer(),
          Container(
            width: 470,
            child: ListView.builder(
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
                        right: index == appBarTabs.length - 1 ? 0 : 10,
                        top: 10,
                        bottom: 10),
                    child: Text(
                      appBarTabs[index],
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
