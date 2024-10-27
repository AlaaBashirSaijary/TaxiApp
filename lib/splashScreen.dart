import 'dart:math';

import 'package:flutter/material.dart' ;
import 'package:taxiapp/views/decision_screen/decission_screen.dart';


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    Future.delayed(Duration(seconds: 2) ,(){
      Navigator.pushReplacement(context, MaterialPageRoute(
          builder:(_) => DecisionScreen()
      ));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              const Color(0XFF28285A), const Color(0XFF28285A),

            ],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage("assets/mask.png"),
            ),
            // const Text(
            //   " منهج حياة ",
            //   style: TextStyle(
            //     color: Colors.white,
            //     fontSize: 30,
            //     fontWeight: FontWeight.bold,
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
