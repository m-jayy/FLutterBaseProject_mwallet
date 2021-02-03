import 'package:flutter/material.dart';
import 'package:mwallet_app/Screens/AccountStatement.dart';
import 'package:mwallet_app/Screens/OTP.dart';
import 'package:mwallet_app/Screens/SelectBank.dart';
import 'package:mwallet_app/Screens/Success.dart';
import 'package:mwallet_app/Screens/TitleFetch.dart';
import 'package:mwallet_app/Screens/mobileTopup.dart';
import 'package:mwallet_app/screens/dashboard.dart';
import 'package:mwallet_app/screens/login.dart';
import 'package:mwallet_app/screens/splash.dart';

import 'Screens/BillPayment_FetchDetail_Prepaid.dart';
import 'Screens/BillPayment_Main.dart';
import 'Screens/ForgetPassword.dart';
import 'Screens/LocalTransfer.dart';
import 'Screens/MobileTopup_FetchDetail_Prepaid.dart';
import 'Screens/Notifications.dart';
import 'Screens/OtherBankTransfer.dart';
import 'Screens/SignUp.dart';

class Routes {
  Routes._();

  //static variables
  static const String splash = '/Splash';
  static const String login = '/Login';
  static const String otp = '/OTP';
  static const String dashboard = '/Dashboard';
  static const String signup = '/SignUp';
  static const String notification_screen = '/Notifications';
  static const String forgetpassword = '/ForgetPassword';
  static const String select_bank = '/SelectBank';
  static const String billpayment_main = '/BillPayment_Main';
  static const String otherbanktransfer = '/OtherBankTransfer';
  static const String title_fetch = '/TitleFetch';
  static const String success_screen = '/Success';
  static const String billPayment_fetchDetail_prepaid =
      '/BillPayment_FetchDetail_Prepaid';
  static const String account_statement = '/AccountStatement';
  static const String localtransfer = '/LocalTransfer';
  static const String mobiletopup = '/MobileTopup';
  static const String mobileTopup_fetchDetail_prepaid =
      '/MobileTopup_FetchDetail_Prepaid';

  static final routes = <String, WidgetBuilder>{
    splash: (BuildContext context) => SplashScreen(),
    login: (BuildContext context) => Login(),
    otp: (BuildContext context) => Otp(),
    dashboard: (BuildContext context) => Dashboard(),
    signup: (BuildContext context) => SignUp(),
    notification_screen: (BuildContext context) => Notifications(),
    forgetpassword: (BuildContext context) => ForgetPassword(),
    select_bank: (BuildContext context) => SelectBank(),
    billpayment_main: (BuildContext context) => BillPayment_Main(),
    otherbanktransfer: (BuildContext context) => OtherBankTransfer(),
    title_fetch: (BuildContext context) => TitleFetch(),
    success_screen: (BuildContext context) => Success(),
    billPayment_fetchDetail_prepaid: (BuildContext context) =>
        BillPayment_FetchDetail_Prepaid(),
    account_statement: (BuildContext context) => AccountStatement(),
    localtransfer: (BuildContext context) => LocalTransfer(),
    mobiletopup: (BuildContext context) => MobileTopup(),
    mobileTopup_fetchDetail_prepaid: (BuildContext context) =>
        MobileTopup_FetchDetail_Prepaid(),
  };
}
