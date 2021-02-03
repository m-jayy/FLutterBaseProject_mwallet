import 'package:flutter/material.dart';
import 'package:mwallet_app/Routes.dart';
import 'package:mwallet_app/constants/Assets.dart';
import 'package:mwallet_app/models/DashboardGridItems.dart';
import 'package:mwallet_app/values/Color.dart';
import 'package:mwallet_app/widgets/Dashboard_appbar.dart';
import 'package:mwallet_app/widgets/TextView_B.dart';
import 'package:mwallet_app/widgets/TextView_H.dart';
import 'package:mwallet_app/widgets/TextView_N.dart';

import 'drawer.dart';

class Dashboard extends StatefulWidget {
  Dashboard({Key key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  List<Items> _arrItems = List<Items>();

  @override
  void initState() {
    super.initState();

    _arrItems.addAll([
      Items(title: 'Account Statement', route: Routes.account_statement),
      Items(title: 'Bill Payments', route: Routes.billpayment_main),
      Items(title: 'Other Bank Transfer', route: Routes.otherbanktransfer),
      Items(title: 'Local Transfer', route: Routes.localtransfer),
      Items(title: 'Mobile Top Up', route: Routes.mobiletopup),
      Items(title: 'More', route: Routes.dashboard),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.PrimaryColor,
      appBar: CustomAppBar(title: 'Dashboard'),
      drawer: AppDrawer(),
      body: Container(
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            ClipPath(
              clipper: WaveClipperTwo(flip: true, reverse: false),
              child: Container(
                color: CustomColors.AppBackground,
                width: 300,
                height: 460,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                  child: GridView.builder(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemCount: _arrItems.length,
                      gridDelegate:
                          new SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 1.0,
                        childAspectRatio: 1.3,
                      ),
                      itemBuilder: (BuildContext context, int index) {
                        return new GestureDetector(
                          child: Card(
                            // color: Colors.blue[100],
                            elevation: 5,
                            child: Container(
                                padding: EdgeInsets.only(
                                    left: 2.0, right: 2.0, top: 10, bottom: 10),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Image(
                                      image: AssetImage(Assets.icon),
                                      width: 70,
                                    ),
                                    Expanded(
                                      child: Center(
                                        child: TextView_N(
                                            text: "${_arrItems[index].title}",
                                            // sign up to geg started!
                                            alignment: Alignment(0.0, 0.0),
                                            color: Colors.black,
                                            fontSize: 15,
                                            textAlign: TextAlign.center),
                                      ),
                                    ),
                                  ],
                                )),
                          ),
                          onTap: () {
                            print('onTap: GestureDetector');
                            Navigator.of(context)
                                .pushNamed(_arrItems[index].route);
                          },
                        );
                      }),
                ),
              ),
            ),
            Container(
                child: Column(
              children: [
                Container(
                    padding: const EdgeInsets.all(10.0),
                    child: TextView_H(
                      text: "Recent Transactions:",
                      alignment: Alignment(-1.0, 0.0),
                      color: Colors.white,
                      fontSize: 18,
                    )),
                ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 5,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Card(
                          elevation: 5,
                          child: Container(
                            padding: const EdgeInsets.all(10.0),
                            // height: 50,
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Icon(Icons.ac_unit),
                                ),
                                Expanded(
                                  flex: 3,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      TextView_B(
                                        text: "Bank Transfer",
                                        color: CustomColors.AppBlack,
                                      ),
                                      TextView_N(
                                        text: "Send money to ABC",
                                        color: CustomColors.AppBlack,
                                      ),
                                      TextView_N(
                                        text: "16 Jan 2020",
                                        color: CustomColors.Grey,
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      TextView_N(
                                        text: "SUCCESS",
                                        color: Colors.black,
                                      ),
                                      TextView_N(
                                        text: "Rs 16,000.00",
                                        color: Colors.black,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
              ],
            )),
          ],
        ),
      ),
    );
  }
}

class WaveClipperTwo extends CustomClipper<Path> {
  /// reverse the wave direction in vertical axis
  bool reverse;

  /// flip the wave direction horizontal axis
  bool flip;

  WaveClipperTwo({this.reverse = false, this.flip = false});

  @override
  Path getClip(Size size) {
    var path = Path();
    if (!reverse && !flip) {
      path.lineTo(0.0, size.height - 20);

      var firstControlPoint = Offset(size.width / 4, size.height);
      var firstEndPoint = Offset(size.width / 2.25, size.height - 30.0);
      path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
          firstEndPoint.dx, firstEndPoint.dy);

      var secondControlPoint =
          Offset(size.width - (size.width / 3.25), size.height - 65);
      var secondEndPoint = Offset(size.width, size.height - 40);
      path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
          secondEndPoint.dx, secondEndPoint.dy);

      path.lineTo(size.width, size.height - 40);
      path.lineTo(size.width, 0.0);
      path.close();
    } else if (!reverse && flip) {
      path.lineTo(0.0, size.height - 40);
      var firstControlPoint = Offset(size.width / 3.25, size.height - 65);
      var firstEndPoint = Offset(size.width / 1.75, size.height - 20);
      path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
          firstEndPoint.dx, firstEndPoint.dy);

      var secondCP = Offset(size.width / 1.25, size.height);
      var secondEP = Offset(size.width, size.height - 30);
      path.quadraticBezierTo(
          secondCP.dx, secondCP.dy, secondEP.dx, secondEP.dy);

      path.lineTo(size.width, size.height - 20);
      path.lineTo(size.width, 0.0);
      path.close();
    } else if (reverse && flip) {
      path.lineTo(0.0, 20);
      var firstControlPoint = Offset(size.width / 3.25, 65);
      var firstEndPoint = Offset(size.width / 1.75, 40);
      path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
          firstEndPoint.dx, firstEndPoint.dy);

      var secondCP = Offset(size.width / 1.25, 0);
      var secondEP = Offset(size.width, 30);
      path.quadraticBezierTo(
          secondCP.dx, secondCP.dy, secondEP.dx, secondEP.dy);

      path.lineTo(size.width, size.height);
      path.lineTo(0.0, size.height);
      path.close();
    } else {
      path.lineTo(0.0, 20);

      var firstControlPoint = Offset(size.width / 4, 0.0);
      var firstEndPoint = Offset(size.width / 2.25, 30.0);
      path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
          firstEndPoint.dx, firstEndPoint.dy);

      var secondControlPoint = Offset(size.width - (size.width / 3.25), 65);
      var secondEndPoint = Offset(size.width, 40);
      path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
          secondEndPoint.dx, secondEndPoint.dy);

      path.lineTo(size.width, size.height);
      path.lineTo(0.0, size.height);
      path.close();
    }

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
