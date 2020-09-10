import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:translation_website/presentation/core/const/images.dart';
import 'package:translation_website/presentation/shared/logo.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key key}) : super(key: key);
  final bool isSmall = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
      alignment: Alignment.bottomCenter,
      height: 150,
      color: Color(0XFF0F0E47),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Logo(
                assetLocation: translationImage,
                name: 'LOGO',
                size: 30,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Copyright © 2020 Name\nAll rights reserved',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  isSmall
                      ? Icon(
                          Icons.location_on,
                          color: Colors.white,
                        )
                      : SizedBox.shrink(),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Address',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                '123 some street,\nBlock state\nContry',
                style: TextStyle(color: Colors.white),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      icon: Icon(
                        FontAwesomeIcons.facebookF,
                        color: Colors.white,
                        size: 20,
                      ),
                      onPressed: () {}),
                  IconButton(
                      icon: Icon(
                        FontAwesomeIcons.twitter,
                        color: Colors.white,
                        size: 20,
                      ),
                      onPressed: () {}),
                  IconButton(
                      icon: Icon(
                        FontAwesomeIcons.whatsapp,
                        color: Colors.white,
                        size: 20,
                      ),
                      onPressed: () {}),
                ],
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'For support',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'molotfy50@gmail.com',
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    '01286603519',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'molotfy50@gmail.com',
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    '01286603519',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ],
          ),
          isSmall
              ? SizedBox.shrink()
              : Container(
                  color: Colors.white,
                  width: 300,
                  height: 100,
                ),
        ],
      ),
    );
  }
}
