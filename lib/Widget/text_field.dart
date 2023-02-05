import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  const MyTextField(
      {required this.controller,
      required this.hintText,
      required this.obscureText,
      super.key});

  final controller;

  final hintText;

  final obscureText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: hintText,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey.shade400,
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white54,
          ),
        ),
        fillColor: Colors.grey.shade200,
        filled: true,
      ),
    );
  }
}
