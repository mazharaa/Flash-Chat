import 'package:flash_chat/screen/chat_screen.dart';
import 'package:flash_chat/screen/welcome_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const FlashChat());
}

class FlashChat extends StatelessWidget {
  const FlashChat({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        colorScheme: const ColorScheme.light().copyWith(
          primary: Colors.lightBlue
        )
      ),
      initialRoute: '/',
      routes: {
        '/' : (context) => const WelcomeScreen(),
        '/chat' : (context) => const ChatScreen(),
      },
    );
  }
}
