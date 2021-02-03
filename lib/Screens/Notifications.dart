import 'package:flutter/material.dart';
import 'package:mwallet_app/values/Color.dart';
import 'package:mwallet_app/widgets/CustomAppBar.dart';
import 'package:mwallet_app/widgets/TextView_B.dart';
import 'package:mwallet_app/widgets/TextView_N.dart';

class Notifications extends StatefulWidget {
  Notifications({Key key}) : super(key: key);

  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.AppBackground,
      extendBodyBehindAppBar: true,
      appBar: CustomAppBar(
        title: "Notifications",
        color: CustomColors.PrimaryAssentColor,
      ),
      body: Container(
        child: ListView.builder(
          physics: BouncingScrollPhysics(),
          shrinkWrap: true,
          itemCount: 3,
          itemBuilder: (BuildContext context, int index) {
            return new GestureDetector(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Card(
                    elevation: 5,
                    child: Row(
                      children: [
                        Container(
                          height: 100,
                          child: Row(
                            children: [
                              VerticalDivider(
                                thickness: 5,
                                width: 3,
                                color: CustomColors.PrimaryMediumColor,
                              ),
                              Container(
                                  alignment: Alignment(-1.0, 0.0),
                                  padding: const EdgeInsets.all(10.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      TextView_N(
                                        text: "5 mins",
                                        // sign up to geg started!
                                        fontSize: 12,
                                        color: CustomColors.Grey,
                                      ),
                                      SizedBox(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.01),
                                      TextView_B(
                                        text: "Card Expires",
                                        // sign up to geg started!
                                        fontSize: 20,
                                        color: CustomColors.AppBlack,
                                      ),
                                      SizedBox(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.01),
                                      TextView_N(
                                        text:
                                            "Your Card 8056 **** **** 2231 expires in 15 days.",
                                        // sign up to geg started!
                                        fontSize: 14,
                                        color: CustomColors.SubTextBlack,
                                      ),
                                    ],
                                  )),
                            ],
                          ),
                        )
                      ],
                    )),
              ),
              onTap: () {
                print('onTap: GestureDetector');
              },
            );
          },
        ),
      ),
    );
  }
}
