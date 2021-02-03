import 'package:flutter/material.dart';
import 'package:mwallet_app/Routes.dart';
import 'package:mwallet_app/Screens/OTPform.dart';
import 'package:mwallet_app/constants/Assets.dart';
import 'package:mwallet_app/helpers/size_config.dart';
import 'package:mwallet_app/values/Color.dart';
import 'package:mwallet_app/widgets/Alert_Dialog.dart';
import 'package:mwallet_app/widgets/Button_F.dart';
import 'package:mwallet_app/widgets/Button_N.dart';
import 'package:mwallet_app/widgets/CustomAppBar.dart';
import 'package:mwallet_app/widgets/TextView_H.dart';
import 'package:mwallet_app/widgets/TextView_N.dart';

class Otp extends StatelessWidget {
  static String routeName = "/otp";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: CustomColors.AppBackground,
      extendBodyBehindAppBar: true,
      appBar: CustomAppBar(
        title: "OTP Verification",
        color: CustomColors.PrimaryAssentColor,
      ),
      body: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 150),
                Wrap(
                  children: [
                    Image(
                      image: AssetImage(Assets.otp_icon),
                      width: MediaQuery.of(context).size.width * 0.50,
                    ),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                TextView_H(
                  text: "OTP Verification",
                  alignment: Alignment(0.0, 0.0),
                  color: Colors.black,
                  fontSize: 22,
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.06),
                OTPform(),
                SizedBox(height: SizeConfig.screenHeight * 0.02),
                TextView_N(
                    text: "We sent your code to +1 898 860 ***",
                    // sign up to geg started!
                    alignment: Alignment(0.0, 0.0),
                    color: Colors.grey,
                    fontSize: 14,
                    textAlign: TextAlign.center),
                buildTimer(),
                SizedBox(height: MediaQuery.of(context).size.height * 0.06),
                Button_N(
                    text: "CONTINUE",
                    press: () {
                      Navigator.popUntil(
                          context, ModalRoute.withName(Routes.login));
                      Navigator.of(context)
                          .pushReplacementNamed(Routes.dashboard);
                    }),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                Button_F(
                    text: "Resend OTP Code?",
                    alignment: Alignment(0.0, 0.0),
                    color: CustomColors.PrimaryMediumColor,
                    press: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return Alert_Dialog(
                                title: "SUCCESS",
                                subTitle: "OTP resent successfully!",
                                buttonText: "Ok",
                                press: () {
                                  Navigator.pop(context, Alert_Dialog);
                                });
                          },
                          barrierDismissible: false);
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row buildTimer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextView_N(
            text: "This code will expired in ",
            // sign up to geg started!
            alignment: Alignment(0.0, 0.0),
            color: Colors.grey,
            fontSize: 14,
            textAlign: TextAlign.center),
        TweenAnimationBuilder(
          tween: Tween(begin: 30.0, end: 0.0),
          duration: Duration(seconds: 30),
          builder: (_, value, child) => TextView_N(
              text: "00:${value.toInt()}",
              // sign up to geg started!
              alignment: Alignment(0.0, 0.0),
              color: Colors.red,
              fontSize: 14,
              textAlign: TextAlign.center),
        ),
      ],
    );
  }
}
