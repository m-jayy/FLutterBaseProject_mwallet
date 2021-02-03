import 'package:flutter/material.dart';
import 'package:mwallet_app/widgets/TextView_B.dart';

// ignore: camel_case_types
class Button_F extends StatelessWidget {
  const Button_F({Key key, this.text, this.press, this.alignment, this.color})
      : super(key: key);
  final String text;
  final Function press;
  final Alignment alignment;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: alignment,
      child: InkWell(
        child: TextView_B(
          text: text,
          alignment: alignment,
          color: color,
          fontSize: 14,
        ),
        onTap: press,
      ),
    );
  }
}
