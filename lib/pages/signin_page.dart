import 'package:flutter/material.dart';
import 'package:realapp1/pages/home.dart';
import 'package:realapp1/pages/signup_page.dart';

class SignInPage extends StatefulWidget {
  static const String id = 'signin_page';

  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  _loginIn() {
    String email = emailController.text;
    String password = passwordController.text;
    if (email.isNotEmpty && password.isNotEmpty) {
      Navigator.pushReplacementNamed(context, Homepage.id);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: SizedBox(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Instagram',
              style: TextStyle(fontSize: 50, fontFamily: 'Billabong'),
            ),
            Container(
              height: 48,
              margin: const EdgeInsets.only(left: 20, right: 20, top: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(1),
                  color: Colors.grey[200]),
              child: TextField(
                  controller: emailController,
                  style: const TextStyle(
                    fontSize: 27,
                  ),
                  decoration: const InputDecoration(
                      contentPadding: EdgeInsets.all(10),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.teal)),
                      hintText: 'Email',
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 25))),
            ),

            Container(
              height: 48,
              margin: const EdgeInsets.only(left: 20, right: 20, top: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(1),
                  color: Colors.grey[200]),
              child: TextField(
                  controller: passwordController,
                  obscureText: true,
                  style: const TextStyle(
                    fontSize: 27,
                  ),
                  decoration: const InputDecoration(
                      contentPadding: EdgeInsets.all(10),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.teal)),
                      hintText: 'Password',
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 27))),
            ),

            Container(
              width: double.infinity,
              height: 48,
              margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
              // color: Colors.blue,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  color: Colors.blue[500]),
              child: MaterialButton(
                onPressed: () {
                  _loginIn();
                },
                child: const Text(
                  'Sign in',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),

            Container(padding: const EdgeInsets.all(12),
                child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children:  [
                const Text("Don't have an account?"),
                   const SizedBox(height: 15,width: 15,),
                   GestureDetector(onTap: (){Navigator.pushReplacementNamed(context, SignUpPage.id);},
                       child:const Text('Sign up',style: TextStyle(fontSize: 20),
                       )

                  ),

              ],
            ))

          ],
        ),
      )),
    );
  }
}
