import 'package:flutter/material.dart';
import 'package:mwallet_app/values/Color.dart';
import 'package:mwallet_app/widgets/Button_N.dart';
import 'package:mwallet_app/widgets/CustomAppBar.dart';
import 'package:mwallet_app/widgets/TextView_B.dart';
import 'package:mwallet_app/widgets/TextView_H.dart';
import 'package:mwallet_app/widgets/TextView_N.dart';

import '../Routes.dart';

class TitleFetch extends StatefulWidget {
  TitleFetch({Key key}) : super(key: key);

  @override
  _TitleFetchState createState() => _TitleFetchState();
}

class _TitleFetchState extends State<TitleFetch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.AppBackground,
      extendBodyBehindAppBar: true,
      appBar: CustomAppBar(
        title: "Detail",
        color: CustomColors.PrimaryAssentColor,
      ),
      body: SingleChildScrollView(
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
                    SizedBox(height: MediaQuery.of(context).size.height * 0.15),
                    TextView_H(
                      text: "Bank Alfalah",
                      alignment: Alignment(0.0, 0.0),
                      color: CustomColors.AppBlack,
                      fontSize: 18,
                    ),

                    SizedBox(height: MediaQuery.of(context).size.height * 0.03),

                    Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 17),
                        width: double.infinity,
                        decoration: new BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 10,
                                color: Colors.black26,
                                offset: Offset(0, 2))
                          ],
                        ),
                        child: Column(
                          children: [
                            TextView_N(
                              text: "Account Number",
                              alignment: Alignment(0.0, 0.0),
                              color: CustomColors.Grey,
                              fontSize: 15,
                            ),
                            SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.01),
                            TextView_B(
                              text: "12345678901234567",
                              alignment: Alignment(0.0, 0.0),
                              color: CustomColors.AppBlack,
                              fontSize: 18,
                            ),
                          ],
                        )),

                    SizedBox(height: MediaQuery.of(context).size.height * 0.06),

                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 17),
                      decoration: new BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 10,
                              color: Colors.black26,
                              offset: Offset(0, 2))
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          TextView_N(
                            text: "Account Title",
                            alignment: Alignment(0.0, 0.0),
                            color: CustomColors.Grey,
                            fontSize: 15,
                          ),
                          SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.01),
                          TextView_B(
                            text: "Muhammad Mohsin Javed",
                            alignment: Alignment(0.0, 0.0),
                            color: CustomColors.AppBlack,
                            fontSize: 18,
                          ),
                          SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.03),
                          Container(
                              width: double.infinity,
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          TextView_N(
                                            text: "Tax & Fee",
                                            color: CustomColors.Grey,
                                            fontSize: 15,
                                          ),
                                          SizedBox(
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.01),
                                          TextView_B(
                                            text: "50.00 RS",
                                            color: CustomColors.AppBlack,
                                            fontSize: 18,
                                          ),
                                        ],
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          TextView_N(
                                            text: "Amount",
                                            color: CustomColors.Grey,
                                            fontSize: 15,
                                          ),
                                          SizedBox(
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.01),
                                          TextView_B(
                                            text: "50,000.00 RS",
                                            color: CustomColors.AppBlack,
                                            fontSize: 18,
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.03),
                                ],
                              )),
                        ],
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.06),
                    Button_N(
                        text: "SUBMIT",
                        press: () {
                          Navigator.of(context)
                              .pushReplacementNamed(Routes.success_screen);
                        }),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                    // Text("Consumer Name:",
                    //     style: TextStyle(
                    //         color: Colors.black,
                    //         fontFamily: 'Montserrat',
                    //         fontSize: 16,
                    //         fontWeight: FontWeight.bold)),
                    // SizedBox(
                    //   height: 20,
                    // ),
                    // Text(
                    //   "Muhammad Mohsin Javed",
                    //   style: TextStyle(
                    //     fontSize: 15,
                    //     fontFamily: 'Montserrat',
                    //     color: Colors.grey,
                    //   ),
                    // ),
                    // SizedBox(
                    //   height: 20,
                    // ),
                    // Text("Tax & Fee:",
                    //     style: TextStyle(
                    //         color: Colors.black,
                    //         fontFamily: 'Montserrat',
                    //         fontSize: 16,
                    //         fontWeight: FontWeight.bold)),
                    // SizedBox(
                    //   height: 20,
                    // ),
                    // Text(
                    //   "50.00 RS",
                    //   style: TextStyle(
                    //     fontSize: 15,
                    //     fontFamily: 'Montserrat',
                    //     color: Colors.grey,
                    //   ),
                    // ),
                    // SizedBox(
                    //   height: 20,
                    // ),
                    // Text("Amount:",
                    //     style: TextStyle(
                    //         color: Colors.black,
                    //         fontFamily: 'Montserrat',
                    //         fontSize: 16,
                    //         fontWeight: FontWeight.bold)),
                    // SizedBox(
                    //   height: 20,
                    // ),
                    // Text(
                    //   "50,000 RS",
                    //   style: TextStyle(
                    //     fontSize: 15,
                    //     fontFamily: 'Montserrat',
                    //     color: Colors.grey,
                    //   ),
                    // ),
                  ],
                ),
                SizedBox(height: 20.0),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
