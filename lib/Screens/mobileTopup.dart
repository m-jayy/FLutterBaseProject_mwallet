import 'package:flutter/material.dart';
import 'package:mwallet_app/models/DrowdownList_Model.dart';
import 'package:mwallet_app/values/Color.dart';
import 'package:mwallet_app/widgets/Button_F.dart';
import 'package:mwallet_app/widgets/Button_N.dart';
import 'package:mwallet_app/widgets/CustomAppBar.dart';
import 'package:mwallet_app/widgets/Drowdown_List.dart';
import 'package:mwallet_app/widgets/EditText_H.dart';
import 'package:mwallet_app/widgets/EditText_N.dart';
import 'package:mwallet_app/widgets/TextView_H.dart';

import '../Routes.dart';

class MobileTopup extends StatefulWidget {
  MobileTopup({Key key}) : super(key: key);

  @override
  _MobileTopupState createState() => _MobileTopupState();
}

class _MobileTopupState extends State<MobileTopup> {
  DropListModel dropListModel = DropListModel([
    OptionItem(id: "1", title: "PostPaid"),
    OptionItem(id: "2", title: "PrePaid"),
  ]);
  OptionItem optionItemSelected = OptionItem(id: null, title: "Select Type");

  DropListModel dropListCompanies = DropListModel([
    OptionItem(id: "1", title: "Warid"),
    OptionItem(id: "2", title: "Telenor"),
    OptionItem(id: "2", title: "Ufone"),
    OptionItem(id: "2", title: "Mobilink"),
    OptionItem(id: "2", title: "Zong"),
    OptionItem(id: "2", title: "SCOM"),
  ]);
  OptionItem companySelected = OptionItem(id: null, title: "Select Provider");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.AppBackground,
      extendBodyBehindAppBar: true,
      appBar: CustomAppBar(
        title: "Mobile Top Up",
        color: CustomColors.PrimaryAssentColor,
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 20.0, right: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: MediaQuery.of(context).size.height * 0.25),
                    TextView_H(
                      text: "Carrier Type:",
                      alignment: Alignment(-1.0, 0.0),
                      color: CustomColors.AppBlack,
                      fontSize: 16,
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                    SelectDropList(this.optionItemSelected, this.dropListModel,
                        (optionItem) {
                      optionItemSelected = optionItem;
                      setState(() {});
                    }),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                    TextView_H(
                      text: "Network Provider:",
                      alignment: Alignment(-1.0, 0.0),
                      color: CustomColors.AppBlack,
                      fontSize: 16,
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                    SelectDropList(this.companySelected, this.dropListCompanies,
                        (optionItem) {
                      optionItemSelected = optionItem;
                      setState(() {});
                    }),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                    TextView_H(
                      text: "Mobile Number:",
                      alignment: Alignment(-1.0, 0.0),
                      color: CustomColors.AppBlack,
                      fontSize: 16,
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                    EditText_N(
                      lable: "Enter Mobile Number",
                      icon: Icon(Icons.credit_card),
                      type: "number",
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                    Button_F(
                      text: "SELECT FROM PHONE BOOK",
                      alignment: Alignment(1.0, 0.0),
                      color: Colors.redAccent,
                      press: () {},
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                    TextView_H(
                      text: "Enter Amount:",
                      alignment: Alignment(-1.0, 0.0),
                      color: CustomColors.AppBlack,
                      fontSize: 16,
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                    EditText_H(
                      hint: "30 - 2000",
                      icon: Icon(Icons.credit_card),
                      type: "numberr",
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.06),
                  ],
                ),
                Button_N(
                    text: "NEXT",
                    press: () {
                      Navigator.of(context)
                          .pushNamed(Routes.mobileTopup_fetchDetail_prepaid);
                    }),
                SizedBox(height: 20.0),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
