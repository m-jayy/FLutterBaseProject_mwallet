import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mwallet_app/values/Color.dart';
import 'package:mwallet_app/widgets/TextView_H.dart';

import '../Routes.dart';
import '../constants/Assets.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.AppBackground,
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage(Assets.signin_background),
          fit: BoxFit.fill,
        )),
        alignment: Alignment(0.0, 0.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            // Expanded(child: Text("Test",textAlign: TextAlign.center)),

            Wrap(
              children: [
                Image(
                  image: AssetImage(Assets.icon),
                  width: MediaQuery.of(context).size.width * 0.50,
                ),
              ],
            )
            //     Container(
            //   width: 400,
            //   height: 400,
            //   decoration: BoxDecoration(
            //       image: DecorationImage(
            //           image: AssetImage('assets/images/one.png'),
            //           fit: BoxFit.cover)),
            // ),
            ,
            Padding(
              padding: EdgeInsets.only(top: 20.0),
            ),
            TextView_H(
                text: "Mobile Wallet",
                textAlign: TextAlign.center,
                fontSize: 30,
                color: CustomColors.AppBlack),
          ],
        ),
      ),
    );
  }

  startTimer() {
    var _duration = Duration(milliseconds: 3000);
    return Timer(_duration, navigate);
  }

  navigate() async {
    Navigator.of(context).pushReplacementNamed(Routes.login);
  }
}
