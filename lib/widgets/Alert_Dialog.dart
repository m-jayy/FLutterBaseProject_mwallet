import 'package:flutter/material.dart';
import 'package:mwallet_app/widgets/TextView_N.dart';

import 'TextView_B.dart';

// ignore: camel_case_types
class Alert_Dialog extends StatelessWidget {
  const Alert_Dialog(
      {Key key, this.title, this.press, this.subTitle, this.buttonText})
      : super(key: key);
  final String title;
  final Function press;
  final String subTitle;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: TextView_B(
        text: title,
        alignment: Alignment(0.0, 0.0),
        color: Colors.green,
        fontSize: 15,
      ),
      content: TextView_N(
        text: subTitle,
        color: Colors.grey,
        fontSize: 15,
      ),
      actions: [FlatButton(onPressed: press, child: Text(buttonText))],
      elevation: 24.0,
    );
  }
}
