import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Create/create_screen.dart';
import 'package:flutter_auth/Screens/Login/login_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:from_css_color/from_css_color.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: fromCssColor('#F1FFFF'),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            Padding(padding: EdgeInsets.only(top: 100)),
            Text(
              "Login",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 33),
            Container(
              height: 45,
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return LoginPage();
                      },
                    ),
                  );
                },
                child: Stack(
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(
                          "assets/icon/Apple.svg",
                        ),
                        VerticalDivider(
                          thickness: 1,
                        ),
                        Text(
                          "Continue with Apple",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 45,
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                onPressed: () {
                  Navigator.push( 
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return LoginPage();
                      },
                    ),
                  );
                },
                child: Stack(
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(
                          "assets/icon/Facebook.svg",
                        ),
                        VerticalDivider(
                          thickness: 1,
                        ),
                        Text(
                          "Continue with Facebook",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 45,
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return LoginPage();
                      },
                    ),
                  );
                },
                child: Stack(
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(
                          "assets/icon/Google.svg",
                        ),
                        VerticalDivider(
                          thickness: 1,
                        ),
                        Text(
                          "Continue with Google",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.only(bottom: 379)),
                  Text(
                    "Don't have account?",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return CreatePage();
                            },
                          ),
                        );
                      },
                      child: Text(
                        "Create",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
