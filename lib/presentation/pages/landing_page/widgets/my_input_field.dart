import 'package:flutter/material.dart';

class MyInputField extends StatelessWidget {
  final ValueChanged<String> onchange;
  MyInputField({
    Key key,
    @required this.onchange,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      children: [
        SizedBox(
          height: 190,
          child: TextField(
            onChanged: onchange,
            maxLines: 99,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(15),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue, width: 0.7),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black, width: 0.7),
              ),
              hintText: 'Type your message',
            ),
          ),
        ),
      ],
    );
  }
}
