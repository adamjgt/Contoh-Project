// import 'dart:js';

// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_auth/Screens/Welcome/welcome_page.dart';
// import 'package:flutter_auth/components/rounded_input_filed.dart';
// import 'package:flutter_auth/components/rounded_password_field.dart';
// import 'package:fluttertoast/fluttertoast.dart';
// import 'package:path/path.dart';

// void signIn(String email, String password) async {
//   final formkey = GlobalKey<FormState>();
//   final auth = FirebaseAuth.instance;

//   if (formkey.currentState!.validate()) {
//     await auth
//         .signInWithEmailAndPassword(email: email, password: password)
//         .then((uid) => {
//               Fluttertoast.showToast(msg: "Login Succesful"),
//               Navigator.of(context).pushReplacement(
//                   MaterialPageRoute(builder: (context) => WelcomePage()))
//             });
//   }
// }
