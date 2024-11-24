import 'package:flutter/material.dart';

class SocialLoginButton extends StatelessWidget {
  final String buttonText;
  final String imagePath;

  const SocialLoginButton(
      {super.key, required this.buttonText, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      borderRadius: BorderRadius.circular(50),
      child: Container(
        height: 50,
        decoration: BoxDecoration(
            border: Border.all(), borderRadius: BorderRadius.circular(50)),
        child: Row(
          children: [
            const SizedBox(width: 30),
            Image.asset(imagePath, width: 18),
            const SizedBox(width: 50),
            Center(
              child: Text(
                buttonText,
                style: const TextStyle(fontSize: 14),
              ),
            )
          ],
        ),
      ),
    );
  }
}
