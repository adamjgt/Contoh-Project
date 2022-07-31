import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Create/create_screen.dart';
import 'package:flutter_auth/Screens/Forgot/forgot_screen.dart';
import 'package:flutter_auth/Screens/Login/components/background.dart';
import 'package:flutter_auth/Screens/Welcome/welcome_page.dart';
import 'package:flutter_auth/components/rounded_input_filed.dart';
import 'package:flutter_auth/components/rounded_password_field.dart';
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
          const SizedBox(
            height: 165,
          ),
          const Text("Login",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
          const SizedBox(
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
          const SizedBox(
            height: 10,
          ),
          RoundedInputField(
            controller: TextEditingController(),
            hintText: "enter your email",
            onChanged: (String value) {},
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Text("Password",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500))
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          RoundedPasswordField(
            controller: TextEditingController(),
            hintText: "enter your password",
            onChanged: (String value) {},
          ),
          const SizedBox(
            height: 50,
          ),
          Container(
            width: double.infinity,
            height: 45,
            margin:  EdgeInsets.symmetric(horizontal: 20),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      primary: fromCssColor('#14FFEC')),
                  child: const Text(
                    "Log In",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 17),
                  )),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return ForgotPage();
                  },
                ),
              );
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text("forgot password?")],
            ),
          ),
          const SizedBox(
            height: 145,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Or continue ",
                  style: TextStyle(
                    color: Colors.white,
                  )),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return WelcomePage();
                    }),
                  );
                },
                child: Text(
                  "with",
                  style: TextStyle(color: fromCssColor('#14FFEC')),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
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
