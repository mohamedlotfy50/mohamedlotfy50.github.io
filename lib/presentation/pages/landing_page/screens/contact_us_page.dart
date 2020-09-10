import 'package:flutter/material.dart';
import 'package:translation_website/presentation/pages/landing_page/widgets/bottom_navbar.dart';
import 'package:translation_website/presentation/pages/landing_page/widgets/my_input_field.dart';
import 'package:translation_website/presentation/pages/landing_page/widgets/my_round_button.dart';
import 'package:translation_website/presentation/pages/landing_page/widgets/shadow_text.dart';
import 'package:translation_website/presentation/shared/layout_builder.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyLayOutBuilder(
      web: Container(
        color: Colors.white,
        child: Column(
          children: [
            ShadowTextTitle(
              title: 'Contact us',
              width: 260,
              height: 80,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 35),
                child: Row(
                  children: [
                    Expanded(
                      child: Image.asset('images/contact.png'),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Expanded(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Expanded(
                                child: TextField(
                                  decoration: InputDecoration(
                                    contentPadding:
                                        EdgeInsets.symmetric(horizontal: 15),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.blue, width: 0.7),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.black, width: 0.7),
                                    ),
                                    labelText: 'Name',
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Expanded(
                                child: TextField(
                                  decoration: InputDecoration(
                                    contentPadding:
                                        EdgeInsets.symmetric(horizontal: 15),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.blue, width: 0.7),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.black, width: 0.7),
                                    ),
                                    labelText: 'Email',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        MyInputField(onchange: (_) {}),
                        Container(
                          padding: EdgeInsets.all(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              MyRoundButton(
                                width: 150,
                                height: 50,
                                text: 'Send',
                                onPress: () {},
                              )
                            ],
                          ),
                        )
                      ],
                    ))
                  ],
                ),
              ),
            ),
            BottomNavBar(),
          ],
        ),
      ),
      mobile: Container(
        color: Colors.white,
        child: Column(
          children: [
            ShadowTextTitle(
              title: 'Contact us',
              width: 260,
              height: 80,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 35),
                child: Row(
                  children: [
                    Expanded(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Expanded(
                                child: TextField(
                                  decoration: InputDecoration(
                                    contentPadding:
                                        EdgeInsets.symmetric(horizontal: 15),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.blue, width: 0.7),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.black, width: 0.7),
                                    ),
                                    labelText: 'Name',
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Expanded(
                                child: TextField(
                                  decoration: InputDecoration(
                                    contentPadding:
                                        EdgeInsets.symmetric(horizontal: 15),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.blue, width: 0.7),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.black, width: 0.7),
                                    ),
                                    labelText: 'Email',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        MyInputField(onchange: (_) {}),
                        Container(
                          padding: EdgeInsets.all(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              MyRoundButton(
                                width: 150,
                                height: 50,
                                text: 'Send',
                                onPress: () {},
                              )
                            ],
                          ),
                        )
                      ],
                    ))
                  ],
                ),
              ),
            ),
            BottomNavBar(),
          ],
        ),
      ),
    );
  }
}
