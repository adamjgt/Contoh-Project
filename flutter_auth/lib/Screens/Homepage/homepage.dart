import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:from_css_color/from_css_color.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 75,
        title: Image.asset("assets/icon/GaamonG.png"),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.account_circle_rounded))
        ],
        backgroundColor: fromCssColor('#323232'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
              )
            ],
          ),
        ),
      ),
    );
  }
}
