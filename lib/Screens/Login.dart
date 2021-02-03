import 'package:flutter/material.dart';
import 'package:mwallet_app/constants/Assets.dart';
import 'package:mwallet_app/values/Color.dart';
import 'package:mwallet_app/widgets/Button_F.dart';
import 'package:mwallet_app/widgets/Button_N.dart';
import 'package:mwallet_app/widgets/EditText_N.dart';
import 'package:mwallet_app/widgets/TextView_H.dart';
import 'package:mwallet_app/widgets/TextView_N.dart';

import '../Routes.dart';

class Login extends StatefulWidget {
  Login({Key key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.AppBackground,
      // appBar: AppBar(),
      body: SingleChildScrollView(
          child: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage(Assets.signin_background),
          fit: BoxFit.fill,
        )),
        padding: EdgeInsets.only(left: 20.0, right: 20.0),
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.28),
            TextView_H(
              text: "Welcome!",
              alignment: Alignment(0.0, 0.0),
              color: Colors.black,
              fontSize: 30,
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            TextView_N(
              text: "Sign in to continue",
              // sign up to geg started!
              alignment: Alignment(0.0, 0.0),
              color: Colors.grey,
              fontSize: 18,
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            EditText_N(
              lable: "Email",
              icon: Icon(Icons.email),
              type: "email",
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            EditText_N(
              lable: "Password",
              icon: Icon(Icons.lock),
              type: "password",
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            Button_F(
                text: "FORGOT PASSWORD?",
                alignment: Alignment(1.0, 0.0),
                color: CustomColors.PrimaryMediumColor,
                press: () {
                  Navigator.of(context).pushNamed(Routes.forgetpassword);
                }),
            SizedBox(height: MediaQuery.of(context).size.height * 0.06),
            Button_N(
                text: "LOG IN",
                press: () {
                  Navigator.of(context).pushNamed(Routes.otp);
                }),
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            Center(
              child: Text('Dont have an account?',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontFamily: 'Montserrat')),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.01),
            Button_F(
                text: "SIGN UP",
                alignment: Alignment(0.0, 0.0),
                color: CustomColors.PrimaryMediumColor,
                press: () {
                  Navigator.of(context).pushReplacementNamed(Routes.signup);
                }),
          ],
        ),
      )),
    );
  }
}
