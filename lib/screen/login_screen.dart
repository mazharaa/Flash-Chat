import 'package:flash_chat/flash_button.dart';
import 'package:flash_chat/flash_text_field.dart';
import 'package:flash_chat/screen/chat_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  static const String id = 'login_screen';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                buttonText: 'Login',
                buttonColor: Colors.blueAccent,
                route: ChatScreen.id
              ),
            )
          ],
        ),
      ),

    );
  }
}
