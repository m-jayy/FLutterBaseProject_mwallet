import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:mwallet_app/values/Color.dart';
import 'package:mwallet_app/widgets/Button_N.dart';
import 'package:mwallet_app/widgets/CustomAppBar.dart';
import 'package:mwallet_app/widgets/TextView_N.dart';

import '../Routes.dart';

class Success extends StatefulWidget {
  Success({Key key}) : super(key: key);

  @override
  _SuccessState createState() => _SuccessState();
}

class _SuccessState extends State<Success> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.AppBackground,
      extendBodyBehindAppBar: true,
      appBar: CustomAppBar(
        title: "Success",
        color: CustomColors.PrimaryAssentColor,
      ),
      body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 40.0, left: 20.0, right: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.15),
                        Lottie.asset(
                          'assets/json/success.json',
                          width: 200,
                          height: 200,
                        ),
                        TextView_N(
                          text:
                              "\n\nDear customer, IBFT transaction with refference <23231221> has been successfully performed. Your Remaining Balance is Rs 32.43 and transaction fee is Rs 12.43",
                          textAlign: TextAlign.center,
                          color: CustomColors.Grey,
                          fontSize: 16,
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.06),
                      ],
                    ),
                    Button_N(
                        text: "CONFIRM",
                        press: () {
                          Navigator.popUntil(
                              context, ModalRoute.withName(Routes.dashboard));
                          Navigator.of(context)
                              .pushReplacementNamed(Routes.dashboard);
                        }),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
