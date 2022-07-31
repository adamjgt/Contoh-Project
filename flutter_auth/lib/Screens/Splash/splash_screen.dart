import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:from_css_color/from_css_color.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  double _width = 180;
  double _height = 180;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var heightScreen = size.height;
    var widthScreen = size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          height: heightScreen,
          width: widthScreen,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [],
                ),
                AnimatedContainer(
                  width: _width,
                  height: _height,
                  duration: const Duration(milliseconds: 300),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: fromCssColor('#14FFEC'),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/icon/Gaamon.png",
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SvgPicture.asset("assets/icon/TextGaamon.svg")
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
