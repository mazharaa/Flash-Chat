import 'package:firebase_core/firebase_core.dart';
import 'package:flash_chat/screen/chat_screen.dart';
import 'package:flash_chat/screen/login_screen.dart';
import 'package:flash_chat/screen/registration_screen.dart';
import 'package:flash_chat/screen/welcome_screen.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const FlashChat());
}

class FlashChat extends StatelessWidget {
  const FlashChat({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData.dark().copyWith(
      //   colorScheme: const ColorScheme.light().copyWith(
      //     primary: Colors.lightBlue
      //   )
      // ),
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id : (context) => const WelcomeScreen(),
        RegistrationScreen.id : (context) => const RegistrationScreen(),
        LoginScreen.id : (context) => const LoginScreen(),
        ChatScreen.id : (context) => const ChatScreen(),
      },
    );
  }
}
