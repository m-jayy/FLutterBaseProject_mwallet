import 'package:flutter/material.dart';

// ignore: camel_case_types
class TextView_H extends StatelessWidget {
  const TextView_H(
      {Key key,
      this.text,
      this.alignment,
      this.color,
      this.fontSize,
      this.textAlign})
      : super(key: key);
  final String text;
  final Alignment alignment;
  final Color color;
  final double fontSize;
  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: alignment,
      child: Text(text,
          style: TextStyle(
            fontSize: fontSize,
            fontFamily: 'alte_haas_bold',
            color: color,
          ),
          textAlign: textAlign),
    );
  }
}
