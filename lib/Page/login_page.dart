import 'package:flutter/material.dart';

import '../Widget/text_field.dart';
import '../Widget/button.dart';
import '../Widget/square_tile.dart';
import './register_page.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  //text editing controllers

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth / 20),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: screenHeight / 10,
                  ),
                  //Logo
                  const Icon(Icons.account_balance_sharp, size: 100.0),
                  SizedBox(
                    height: screenHeight / 20,
                  ),
                  //Quote
                  Text(
                    "Welcome back! You have been missed.",
                    style: TextStyle(
                      color: Colors.grey[800],
                      fontSize: 16,
                    ),
                  ),

                  SizedBox(
                    height: screenHeight / 40,
                  ),
                  //Username Texfield
                  MyTextField(
                      controller: usernameController,
                      hintText: "Username",
                      obscureText: false),
                  SizedBox(
                    height: screenHeight / 40,
                  ),
                  //Password Textfield
                  MyTextField(
                      controller: passwordController,
                      hintText: "Password",
                      obscureText: true),

                  SizedBox(
                    height: screenHeight / 100,
                  ),
                  //Forgot Password?
                  Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                    Text(
                      "Forgot Password?",
                      style: TextStyle(color: Colors.grey.shade700),
                    ),
                  ]),
                  SizedBox(
                    height: screenHeight / 100,
                  ),
                  //SignIn Button
                  MyButton("Sign In", signUserIn),

                  SizedBox(
                    height: screenHeight / 100,
                  ),
                  //or continue with
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Expanded(
                          child: Divider(
                            thickness: 3,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text(
                            "Or continue with",
                            style: TextStyle(color: Colors.grey.shade700),
                          ),
                        ),
                        const Expanded(
                          child: Divider(
                            thickness: 3,
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(
                    height: screenHeight / 20,
                  ),

                  //Google/ Apple Button
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      SquareTile(imagePath: "lib/Image/google.png"),
                      SquareTile(imagePath: "lib/Image/apple.png"),
                    ],
                  ),

                  SizedBox(
                    height: screenHeight / 15,
                  ),

                  //Not a member? Sign Up

                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignInPage()),
                      );
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Not a member? ",
                          style: TextStyle(color: Colors.grey.shade700),
                        ),
                        const Text(
                          "Register Now!",
                          style: TextStyle(color: Colors.blueAccent),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
