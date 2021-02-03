import 'package:flutter/material.dart';
import 'package:mwallet_app/values/Color.dart';
import 'package:mwallet_app/widgets/TextView_B.dart';

// ignore: camel_case_types
class Button_N extends StatelessWidget {
  const Button_N({
    Key key,
    this.text,
    this.press,
  }) : super(key: key);
  final String text;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // MediaQuery.of(context).size.width * 0.50
      height: 50,

      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          gradient: LinearGradient(
            colors: <Color>[
              CustomColors.PrimaryDarkColor,
              CustomColors.PrimaryMediumColor,
            ],
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black45,
              offset: Offset(1.0, 0.0),
              blurRadius: 2.5,
            ),
          ]),

      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: press,
          child: Center(
            child: TextView_B(
              text: text,
              fontSize: 18,
              color: Colors.white,
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
