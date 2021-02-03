import 'package:flutter/material.dart';
import 'package:mwallet_app/constants/Assets.dart';
import 'package:mwallet_app/values/Color.dart';
import 'package:mwallet_app/widgets/TextView_B.dart';
import 'package:mwallet_app/widgets/TextView_H.dart';
import 'package:mwallet_app/widgets/TextView_N.dart';

abstract class ListItem {
  Widget buildRow(BuildContext context);
}

class HeadingItem implements ListItem {
  final String heading;

  HeadingItem(this.heading);

  Widget buildRow(BuildContext context) => Row(
        children: [
          Expanded(
            flex: 1,
            child: TextView_H(
              text: "Today",
              color: CustomColors.Grey,
              fontSize: 20,
            ),
          ),
          Expanded(
            flex: 1,
            child: TextView_B(
              text: "RS 2033.00",
              color: CustomColors.Grey,
              fontSize: 20,
              textAlign: TextAlign.end,
            ),
          ),
        ],
      );
}

class DataItem implements ListItem {
  final String title;
  final String time;
  final String amount;
  final String icon;

  DataItem(
    this.title,
    this.time,
    this.amount,
    this.icon,
  );

  Widget buildRow(BuildContext context) => Row(
        children: [
          Expanded(
            flex: 1,
            child: Image(image: AssetImage(Assets.arrow_down)),
          ),
          Expanded(
            flex: 3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextView_B(
                  text: "IBFT via Alfa/Online",
                  color: CustomColors.AppBlack,
                  fontSize: 16,
                ),
                SizedBox(
                  height: 5,
                ),
                TextView_N(
                  text: "5:39PM",
                  color: CustomColors.Grey,
                  fontSize: 12,
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                TextView_N(
                  text: "Rs 16,00.00",
                  color: Colors.redAccent,
                  fontSize: 12,
                )
              ],
            ),
          ),
        ],
      );
}
