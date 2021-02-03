import 'package:flutter/material.dart';
import 'package:mwallet_app/Routes.dart';
import 'package:mwallet_app/values/Color.dart';
import 'package:mwallet_app/widgets/TextView_B.dart';
import 'package:mwallet_app/widgets/TextView_H.dart';
import 'package:mwallet_app/widgets/TextView_N.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      child: Drawer(
        child: SafeArea(
          child: ListView(
            // Important: Remove any padding from the ListView.

            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(10.0),
                height: MediaQuery.of(context).size.height * 0.20,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextView_H(
                      text: "Ali Ghani",
                      alignment: Alignment(-1.0, 0.0),
                      color: CustomColors.PrimaryDarkColor,
                      textAlign: TextAlign.start,
                      fontSize: 16,
                    ),
                    SizedBox(height: 10),
                    TextView_N(
                      text: "alighani@xyz.com",
                      alignment: Alignment(-1.0, 0.0),
                      color: CustomColors.Grey,
                      textAlign: TextAlign.start,
                      fontSize: 16,
                    ),
                    SizedBox(height: 20),
                    Divider(
                      height: 1,
                      color: CustomColors.Grey,
                    )
                  ],
                ),
              ),
              buildListTile(context, "Settings", Icons.home, Routes.dashboard),
              buildListTile(context, "Help/FAQ", Icons.home, Routes.dashboard),
            ],
          ),
        ),
      ),
    );
  }

  ListTile buildListTile(
      BuildContext context, String title, IconData iconData, String route) {
    return ListTile(
      leading: Icon(iconData),
      // trailing: Icon(Icons.arrow_forward_ios),
      title: TextView_B(
        text: title,
        color: CustomColors.AppBlack,
        textAlign: TextAlign.start,
        fontSize: 14,
      ),
      onTap: () {
        Navigator.of(context).pop();
        if (ModalRoute.of(context).settings.name != route) {
          Navigator.of(context).pushNamed(route);
        }
      },
    );
  }
}
