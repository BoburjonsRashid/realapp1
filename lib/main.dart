import 'package:flutter/material.dart';
import 'package:realapp1/pages/home.dart';
import 'package:realapp1/pages/signin_page.dart';
import 'package:realapp1/pages/signup_page.dart';
import 'package:realapp1/pages/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const SplashPage(),
        routes:{
      SplashPage.id:(context)=>const SplashPage(),
      Homepage.id:(context)=>const Homepage(),
          SignInPage.id:(context)=>const SignInPage(),
          SignUpPage.id:(context)=>const SignUpPage()}
    );
  }
}

