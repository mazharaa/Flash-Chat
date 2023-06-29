import 'package:flash_chat/components/flash_button.dart';
import 'package:flash_chat/screen/login_screen.dart';
import 'package:flash_chat/screen/registration_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});
  static const String id = 'welcome_screen';

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 0, 30),
              child: Row(
                children: [
                  Hero(
                    tag: 'logo',
                    child: Image.asset(
                      'images/logo.png',
                      scale: 10,
                    ),
                  ),
                  const Text(
                    'Flash Chat',
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 45,
                      fontWeight: FontWeight.w900
                    ),
                  )
                ]
              ),
            ),
            FlashButton(
              buttonColor: Colors.lightBlueAccent,
              buttonText: 'Log In',
              onPressed: () {
                Navigator.pushNamed(context, LoginScreen.id);
              }
            ),
            FlashButton(
              buttonText: 'Registration',
              buttonColor: Colors.blueAccent,
              onPressed: () {
                Navigator.pushNamed(context, RegistrationScreen.id);
              },
            )
          ],
        ),
      ),
    );
  }
}
