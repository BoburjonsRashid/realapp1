import 'dart:async';

import 'package:flutter/material.dart';
import 'package:realapp1/pages/home.dart';
import 'package:realapp1/pages/signin_page.dart';

class SplashPage extends StatefulWidget {
  static const String id = 'splash_page';
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPAgeState();
}

class _SplashPAgeState extends State<SplashPage> {
  var isLoginIn = true;
  _initTimer() {
    Timer(const Duration(seconds: 2), () {
      if (!isLoginIn) {
        Navigator.pushReplacementNamed(context, Homepage.id);
      } else {
        Navigator.pushReplacementNamed(context, SignInPage.id);
      }
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _initTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Colors.white,
          child: Stack(
            children: [
              Center(
                child: Image.asset(
                  'assets/images/instagram.png',
                  width: 80,
                  height: 80,
                ),
              ),
              Container(
                  padding: const EdgeInsets.all(40),
                  child: Column(
                      //crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Center(
                          child: Text(
                            'From Facebook',
                            style: TextStyle(fontSize: 20),
                          ),
                        )
                      ]))
            ],
          )),
    );
  }
}
