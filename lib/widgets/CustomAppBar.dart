import 'package:flutter/material.dart';
import 'package:mwallet_app/values/Color.dart';
import 'package:mwallet_app/widgets/TextView_H.dart';
import 'WaveClipper.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  final String title;
  final Color color;
  final double height;

  const CustomAppBar({Key key, this.title, this.height = kToolbarHeight, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: ClipPath(
          clipper: WaveClipperTwoAppBar(flip: true),
          child: AppBar(
            title: TextView_H(
              text: title,
              fontSize: 20,
              color: color,
            ),
            centerTitle: true,
            backgroundColor: CustomColors.PrimaryColor,
            shadowColor: Colors.transparent,
            leading: IconButton(
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () => Navigator.pop(context),
            ),
            iconTheme: IconThemeData(color: color),
          )),
    );
  }

  @override
  Size get preferredSize => new Size.fromHeight(100);
}
