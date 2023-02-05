import 'package:flutter/material.dart';

class SquareTile extends StatelessWidget {
  const SquareTile({required this.imagePath, super.key});
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.white),
      ),
      child: Image.asset(
        imagePath,
        height: 60,
      ),
    );
  }
}
