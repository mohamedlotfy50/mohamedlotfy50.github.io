import 'package:flutter/material.dart';
import 'package:translation_website/presentation/pages/landing_page/widgets/my_round_button.dart';

class LandingText extends StatelessWidget {
  final Function() onPress;
  final int flex;
  final CrossAxisAlignment crossAxisAlignment;
  final TextAlign textAlign;
  final MainAxisAlignment mainAxisAlignment;
  final MainAxisAlignment rowMainAxisAlignment;

  const LandingText({
    Key key,
    this.onPress,
    this.flex,
    this.crossAxisAlignment,
    this.textAlign,
    this.mainAxisAlignment,
    this.rowMainAxisAlignment,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: Column(
        crossAxisAlignment: crossAxisAlignment,
        mainAxisAlignment: mainAxisAlignment,
        children: [
          Text(
            'Lorem ipsum is placeholder text',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            width: 450,
            child: Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
              textAlign: textAlign,
              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 18),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            child: Row(
              mainAxisAlignment: rowMainAxisAlignment,
              children: [
                MyRoundButton(
                  height: 50,
                  width: 200,
                  text: 'Contatc us now',
                  onPress: onPress,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
