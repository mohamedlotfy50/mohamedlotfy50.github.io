import 'package:flutter/material.dart';

class ServiceCard extends StatelessWidget {
  const ServiceCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(
            8,
          ),
          border: Border.all(color: Colors.black38)),
      width: 210,
      child: Column(
        children: [
          CircleAvatar(
            radius: 35,
            backgroundColor: Colors.black,
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'The Title',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Reem Kufi',
              fontWeight: FontWeight.w600,
              fontSize: 18,
            ),
          ),
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
