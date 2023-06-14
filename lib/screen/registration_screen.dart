import 'package:flash_chat/flash_button.dart';
import 'package:flash_chat/flash_text_field.dart';
import 'package:flash_chat/screen/welcome_screen.dart';
import 'package:flutter/material.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});
  static const String id = 'registration_screen';

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
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
            SizedBox(
              height: 150,
              child: Hero(
                tag: 'logo',
                child: Image.asset(
                  'images/logo.png',
                  fit: BoxFit.contain,
                ),
              ),
            ),
            const FlashTextField(
              borderSide: Colors.grey,
              hintText: 'Username',
              insideTextColor: Colors.grey,
              prefixIcon: Icons.person,
            ),
            const FlashTextField(
              borderSide: Colors.grey,
              hintText: 'Password',
              insideTextColor: Colors.grey,
              prefixIcon: Icons.lock,
            ),
            const Padding(
              padding: EdgeInsets.only(top: 40),
              child: FlashButton(
                  buttonText: 'Register',
                  buttonColor: Colors.blueAccent,
                  route: WelcomeScreen.id
              ),
            )
          ],
        ),
      ),

    );
  }
}
