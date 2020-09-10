import 'package:flutter/material.dart';

class PricingCard extends StatelessWidget {
  const PricingCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(
            8,
          ),
          border: Border.all(color: Colors.black38)),
      width: 250,
      child: Column(
        children: [
          Container(
            height: 100,
            color: Colors.red,
            child: Center(child: Text('Plane name')),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Icon(
                Icons.check,
                color: Colors.green,
              ),
              SizedBox(
                width: 10,
              ),
              Text('the description of the plane')
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.check,
                color: Colors.green,
              ),
              SizedBox(
                width: 10,
              ),
              Text('the description of the plane')
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.check,
                color: Colors.green,
              ),
              SizedBox(
                width: 10,
              ),
              Text('the description of the plane')
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.check,
                color: Colors.green,
              ),
              SizedBox(
                width: 10,
              ),
              Text('the description of the plane')
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.check,
                color: Colors.green,
              ),
              SizedBox(
                width: 10,
              ),
              Text('the description of the plane')
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.check,
                color: Colors.green,
              ),
              SizedBox(
                width: 10,
              ),
              Text('the description of the plane')
            ],
          ),
          Expanded(child: Container()),
          Container(
            child: Text('bottom'),
          )
        ],
      ),
    );
  }
}
