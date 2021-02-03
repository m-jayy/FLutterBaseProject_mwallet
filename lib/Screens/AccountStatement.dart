import 'package:flutter/material.dart';
import 'package:mwallet_app/constants/Assets.dart';
import 'package:mwallet_app/helpers/AccountStatementRowBuilderl.dart';
import 'package:mwallet_app/values/Color.dart';
import 'package:mwallet_app/widgets/CustomAppBar.dart';

class AccountStatement extends StatefulWidget {
  AccountStatement({Key key}) : super(key: key);

  @override
  _AccountStatementState createState() => _AccountStatementState();
}

class _AccountStatementState extends State<AccountStatement> {
  List<ListItem> _arrItem = List<ListItem>();
  @override
  void initState() {
    super.initState();
    _arrItem.add(HeadingItem("Today"));
    _arrItem.add(DataItem(
        "IBFT via Alfa/Online", "5:39PM", "Rs 1600.00", Assets.arrow_down));
    _arrItem.add(DataItem(
        "IBFT via Alfa/Online", "5:39PM", "Rs 1600.00", Assets.arrow_down));
    _arrItem.add(DataItem(
        "IBFT via Alfa/Online", "5:39PM", "Rs 1600.00", Assets.arrow_down));
    _arrItem.add(DataItem(
        "IBFT via Alfa/Online", "5:39PM", "Rs 1600.00", Assets.arrow_down));
    _arrItem.add(DataItem(
        "IBFT via Alfa/Online", "5:39PM", "Rs 1600.00", Assets.arrow_down));
    _arrItem.add(HeadingItem("Yesterday"));
    _arrItem.add(DataItem(
        "IBFT via Alfa/Online", "5:39PM", "Rs 1600.00", Assets.arrow_down));
    _arrItem.add(DataItem(
        "IBFT via Alfa/Online", "5:39PM", "Rs 1600.00", Assets.arrow_down));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.AppBackground,
      extendBodyBehindAppBar: true,
      appBar: CustomAppBar(
        title: "Account Statement",
        color: CustomColors.PrimaryAssentColor,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: ListView.builder(
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            itemCount: _arrItem.length,
            itemBuilder: (BuildContext context, int index) {
              return new GestureDetector(
                child: Container(
                  padding: const EdgeInsets.all(10.0),
                  // height: 50,

                  child: _arrItem[index].buildRow(context),
                ),
                onTap: () {
                  print('onTap: GestureDetector');
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
