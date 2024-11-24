import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../components/social_login_button.dart';
import '../components/terms_and_privacy.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30, bottom: 70),
                child: Image.asset(
                  'assets/images/medium.png',
                  height: 50,
                ),
              ),
              Expanded(
                child: Center(
                    child: Text(
                  'Join Medium.',
                  style: GoogleFonts.crimsonPro(
                    textStyle: const TextStyle(
                      fontSize: 35,
                    ),
                  ),
                )),
              ),
              const SocialLoginButton(
                buttonText: 'Sign up with Google',
                imagePath: 'assets/images/google.png',
              ),
              const SizedBox(height: 10),
              const SocialLoginButton(
                buttonText: 'Sign up with Email',
                imagePath: 'assets/images/email.png',
              ),
              const SizedBox(height: 25),
              const Row(
                children: [
                  Expanded(child: Divider(color: Colors.grey)),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      'Or, sign up with',
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  ),
                  Expanded(child: Divider(color: Colors.grey)),
                ],
              ),
              const SizedBox(height: 20),
              Center(
                child: Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.black),
                  ),
                  child: IconButton(
                    icon: Image.asset(
                      'assets/images/facebook.png',
                      width: 30,
                    ),
                    color: Colors.black,
                    onPressed: () {},
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Expanded(
                child: RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                    text: 'Already have an account? ',
                    style: TextStyle(color: Colors.black),
                    children: [
                      TextSpan(
                        text: 'Sign in',
                        style: TextStyle(
                          color: Colors.green,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const TermsAndPrivacy(),
            ],
          ),
        ),
      ),
    );
  }
}
