import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final List<String> appBarTabs;
  const MyAppBar({Key key, this.appBarTabs}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25),
      alignment: Alignment.bottomCenter,
      color: Colors.blue,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 380,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: appBarTabs.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {},
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(appBarTabs[index]),
                  ),
                );
              },
            ),
          ),
          Spacer(),
          Row(
            children: [
              Text('الاسم'),
              SizedBox(
                width: 10,
              ),
              CircleAvatar(
                backgroundColor: Colors.black,
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(65);
}
