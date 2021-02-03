import 'package:flutter/material.dart';
import 'package:mwallet_app/Routes.dart';
import 'package:mwallet_app/values/Color.dart';
import 'package:mwallet_app/widgets/TextView_H.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  final String title;
  final double height;

  const CustomAppBar({Key key, this.title, this.height = kToolbarHeight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      // leading: Builder(
      //   builder: (context) => IconButton(
      //     icon: new Icon(Icons.menu),
      //     onPressed: () => Scaffold.of(context).openDrawer(),
      //   ),
      // ),
      title: TextView_H(text: title, color: CustomColors.AppBlack),
      centerTitle: true,
      backgroundColor: Colors.white,
      shadowColor: Colors.transparent,
      actions: [
        IconButton(
          icon: Icon(Icons.notifications),
          onPressed: () {
            Navigator.of(context).pushNamed(Routes.notification_screen);
          },
        ),
        IconButton(
          icon: Icon(Icons.more_vert),
          onPressed: () {},
        ),
      ],
      iconTheme: IconThemeData(color: Colors.black),
    );
  }

  @override
  Size get preferredSize => new Size.fromHeight(height);
}
