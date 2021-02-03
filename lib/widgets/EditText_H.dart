import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mwallet_app/values/Color.dart';

// ignore: camel_case_types
class EditText_H extends StatelessWidget {
  const EditText_H({Key key, this.hint, this.icon, this.type})
      : super(key: key);
  final String hint;
  final Icon icon;
  final String type;

  @override
  Widget build(BuildContext context) {
    if (type == "password") {
      return Container(
        child: TextField(
          decoration: InputDecoration(
              prefixIcon: icon,
              hintText: hint,
              labelStyle: TextStyle(
                  fontFamily: 'helvetica_neue', color: CustomColors.Grey),
              focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: CustomColors.PrimaryColor))),
          obscureText: true,
        ),
      );
    } else if (type == "number") {
      return Container(
        child: TextField(
          decoration: InputDecoration(
              prefixIcon: icon,
              hintText: hint,
              labelStyle: TextStyle(
                  fontFamily: 'helvetica_neue', color: CustomColors.Grey),
              focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: CustomColors.PrimaryColor))),
          keyboardType: TextInputType.number,
          inputFormatters: <TextInputFormatter>[
            FilteringTextInputFormatter.digitsOnly
          ],
        ),
      );
    } else {
      return Container(
        child: TextField(
          decoration: InputDecoration(
              prefixIcon: icon,
              hintText: hint,
              labelStyle: TextStyle(
                  fontFamily: 'helvetica_neue', color: CustomColors.Grey),
              focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: CustomColors.PrimaryColor))),
        ),
      );
    }
  }
}
