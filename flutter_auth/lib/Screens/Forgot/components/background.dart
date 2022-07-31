import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var heightScreen = size.height;
    return SingleChildScrollView(
      child: ConstrainedBox(
        constraints: BoxConstraints(maxHeight: heightScreen),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
                top: 0,
                child: SvgPicture.asset(
                  "assets/images/Atas.svg",
                  width: size.width * 1,
                )),
            Positioned(top: 53, child: Image.asset("assets/icon/Gaamon.png")),
            Positioned(
                bottom: 0,
                child: SvgPicture.asset(
                  "assets/images/Bawah.svg",
                  width: size.width * 1,
                )),
            child,
          ],
        ),
      ),
    );
  }
}
