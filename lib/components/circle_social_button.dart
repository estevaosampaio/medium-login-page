import 'package:flutter/material.dart';

class CircleSocialButton extends StatelessWidget {
  final String imagePath;

  const CircleSocialButton({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Colors.black),
      ),
      child: IconButton(
        icon: Image.asset(
          imagePath,
          width: 30,
        ),
        color: Colors.black,
        onPressed: () {},
      ),
    );
  }
}
