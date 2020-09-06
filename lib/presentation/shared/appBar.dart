import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  final List<String> appBarTabs;
  final PageController controller;
  const MyAppBar({Key key, this.appBarTabs, this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0XFF0F0E47),
      height: 75,
      padding: EdgeInsets.symmetric(horizontal: 30),
      alignment: Alignment.center,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.white,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'Logo',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white),
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
                        right: index == 4 ? 0 : 20,
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
            ),
          ),
        ],
      ),
    );
  }
}
