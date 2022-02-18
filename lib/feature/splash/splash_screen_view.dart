import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:math' as math;

import 'package:flutter_svg/flutter_svg.dart';

class SplashScreenView extends StatefulWidget {
  const SplashScreenView({Key? key}) : super(key: key);

  @override
  _SplashScreenViewState createState() => _SplashScreenViewState();
}

class _SplashScreenViewState extends State<SplashScreenView> {
  final String _splashScreenMainText = 'Discover limited Item';
  final String _splashScreenMainText2 = 'NFTs 🔥';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),*/
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 40,
            child: Stack(
              children: [
                Image.asset(
                  "assets/images/splash_screen/start_top.png",
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  "assets/images/splash_screen/start_top2.png",
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
          Expanded(
              flex: 5,
              child: SizedBox(
                height: 20,
              )),
          Expanded(
            flex: 20,
            child: SvgPicture.asset("assets/vectors/start_mid.svg"),
          ),
          Expanded(
            flex: 10,
            child: Container(
              width: MediaQuery.of(context).size.width*0.2,
              child: Wrap(
                alignment: WrapAlignment.center ,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "$_splashScreenMainText ",
                        textAlign: TextAlign.center,
                        softWrap: true,
                        overflow: TextOverflow.clip,
                        maxLines: 2,
                        style: TextStyle(
                          color: Color.fromRGBO(17, 17, 17, 1),
                          fontFamily: 'Inter',
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          height: 1.6666666666666667,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    _splashScreenMainText2,
                    textAlign: TextAlign.center,
                    softWrap: false,
                    overflow: TextOverflow.clip,
                    maxLines: 2,
                    style: TextStyle(
                      color: Color.fromRGBO(17, 17, 17, 1),
                      fontFamily: 'Inter',
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      height: 1.6666666666666667,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
              flex: 30,
              child: Image.asset(
                "assets/images/splash_screen/start_bottom.png",
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.fill,
              )),
        ],
      ),
    );
  }
}
