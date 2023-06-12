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
                  Image.asset(
                    'images/logo.png',
                    scale: 10,
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
            const WelcomeButton(
              buttonColor: Colors.lightBlueAccent,
              buttonText: 'Log In',
              route: LoginScreen.id,
            ),
            const WelcomeButton(
              buttonText: 'Registration',
              buttonColor: Colors.blueAccent,
              route: RegistrationScreen.id
            )
          ],
        ),
      ),
    );
  }
}

class WelcomeButton extends StatelessWidget {
  const WelcomeButton({
    super.key,
    required this.buttonText,
    required this.buttonColor,
    required this.route,
  });

  final String buttonText;
  final MaterialAccentColor buttonColor;
  final String route;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, route);
        },
        style: ButtonStyle(
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
          ),
          backgroundColor: MaterialStatePropertyAll(
            buttonColor
          ),
          fixedSize: const MaterialStatePropertyAll(Size.fromHeight(50))
        ),
        child: Text(
          buttonText
        ),
      ),
    );
  }
}
