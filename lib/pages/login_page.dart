import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medium_login/components/circle_social_button.dart';
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
                  key: const ValueKey("imageMedium"),
                  'assets/images/medium.png',
                  height: 50,
                ),
              ),
              Expanded(
                child: Center(
                    child: Text(
                  key: const ValueKey("textTitle"),
                  'Join Medium.',
                  style: GoogleFonts.crimsonPro(
                    textStyle: const TextStyle(
                      fontSize: 35,
                    ),
                  ),
                )),
              ),
              const SocialLoginButton(
                key: ValueKey("signupGoogle"),
                buttonText: 'Sign up with Google',
                imagePath: 'assets/images/google.png',
              ),
              const SizedBox(height: 10),
              const SocialLoginButton(
                key: ValueKey("signupEmail"),
                buttonText: 'Sign up with Email',
                imagePath: 'assets/images/email.png',
              ),
              const SizedBox(height: 25),
              const Row(
                children: [
                  Expanded(
                    child: Divider(
                      key: ValueKey("dividerLeft"),
                      color: Colors.grey,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      'Or, sign up with',
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      key: ValueKey("dividerRight"),
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Center(
                  child: CircleSocialButton(
                      key: ValueKey("buttonFacebook"),
                      imagePath: 'assets/images/facebook.png')),
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
