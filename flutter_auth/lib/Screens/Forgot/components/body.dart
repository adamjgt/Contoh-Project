import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Create/create_screen.dart';
import 'package:flutter_auth/Screens/Forgot/components/background.dart';
import 'package:flutter_auth/Screens/Login/login_screen.dart';
import 'package:flutter_auth/Screens/Welcome/welcome_page.dart';
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
          Text("Forgot Password",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
          SizedBox(
            height: 30,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Text("Email",
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
            hintText: "enter your email",
            onChanged: (String value) {},
          ),
          SizedBox(
            height: 25,
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
                    "Send",
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
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 145,
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Or continue ",
                style: TextStyle(color: Colors.white),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return WelcomePage();
                      },
                    ),
                  );
                },
                child: Text(
                  "with",
                  style: TextStyle(color: fromCssColor('#14FFEC')),
                ),
              )
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Don't have account? ",
                style: TextStyle(color: Colors.white),
              ),
              GestureDetector(
                onTap: () {
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
