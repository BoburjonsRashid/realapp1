import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
 static const String id='home';

  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Instagram',style: TextStyle(color: Colors.white, fontFamily: 'Billabong',fontSize: 35),),
      ),
      body: const Center(
        child: Text('welcome to home',style: TextStyle(fontFamily: 'AcademyOSTT Italic',fontSize: 40),),
      ),
    );
  }
}
