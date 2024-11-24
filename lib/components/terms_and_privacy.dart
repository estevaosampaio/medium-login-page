import 'package:flutter/material.dart';

class TermsAndPrivacy extends StatelessWidget {
  const TermsAndPrivacy({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.justify,
      text: const TextSpan(
        text: 'By signing up, you agree to our ',
        style: TextStyle(color: Colors.grey),
        children: [
          TextSpan(
            text: 'Terms of Service',
            style: TextStyle(
              color: Colors.green,
              decoration: TextDecoration.underline,
            ),
          ),
          TextSpan(
            text: ' and acknowledge tha our ',
          ),
          TextSpan(
            text: 'Privacy Police',
            style: TextStyle(
              color: Colors.green,
              decoration: TextDecoration.underline,
            ),
          ),
          TextSpan(
            text: ' applies to you.',
          ),
        ],
      ),
    );
  }
}
