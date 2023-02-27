import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../Widget/button.dart';
import '../Widget/text_field.dart';

class SignInPage extends StatelessWidget {
  SignInPage({super.key});

  //Text Editing Controllers

  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final cnfpasswordController = TextEditingController();

  void _signin() {}

  @override
  Widget build(BuildContext context) {
    //Screen Size
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: screenWidth / 20),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  CupertinoIcons.signature,
                  size: 120,
                ),
                SizedBox(
                  height: screenHeight / 20,
                ),
                Text(
                  "Welcome! It's nice to see you here.",
                  style: TextStyle(
                    color: Colors.grey[800],
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: screenHeight / 40,
                ),
                MyTextField(
                    controller: usernameController,
                    hintText: "Username",
                    obscureText: false),
                SizedBox(
                  height: screenHeight / 40,
                ),
                MyTextField(
                    controller: emailController,
                    hintText: "Email",
                    obscureText: false),
                SizedBox(
                  height: screenHeight / 40,
                ),
                MyTextField(
                    controller: passwordController,
                    hintText: "Password",
                    obscureText: true),
                SizedBox(
                  height: screenHeight / 40,
                ),
                MyTextField(
                    controller: cnfpasswordController,
                    hintText: "Repeat Password",
                    obscureText: true),

                SizedBox(
                  height: screenHeight / 100,
                ),
                //SignIn Button
                MyButton(
                  "Sign Up",
                  (() {}),
                )
              ],
            ),
          ),
        ),
      )),
    );
  }
}
