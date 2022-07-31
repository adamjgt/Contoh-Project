import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Create/components/background.dart';
import 'package:flutter_auth/Screens/Login/login_screen.dart';
import 'package:flutter_auth/components/rounded_input_filed.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:from_css_color/from_css_color.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 165,
          ),
          Text("Create",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
          SizedBox(
            height: 30,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Text("Phone Number Or Email",
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          RoundedInputField(
            controller: TextEditingController(),
            hintText: "",
            onChanged: (String value) {},
          ),
          SizedBox(
            height: 7,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Text(
                  "Example: Email@gmail.com",
                  style: TextStyle(color: Colors.black.withOpacity(0.5)),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            width: double.infinity,
            height: 45,
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      primary: fromCssColor('#14FFEC')),
                  child: Text(
                    "Create",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 17),
                  )),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "or register with",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
              )
            ],
          ),
          SizedBox(
            height: 10,
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
              onPressed: () {},
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  SvgPicture.asset("assets/icon/Google.svg"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Google",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 145,
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Already have an account? ",
                style: TextStyle(color: Colors.white),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return LoginPage();
                      },
                    ),
                  );
                },
                child: Text(
                  "Login",
                  style: TextStyle(color: fromCssColor('#14FFEC')),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
