import 'package:firebase_auth/firebase_auth.dart';
import 'package:flash_chat/components/flash_button.dart';
import 'package:flash_chat/components/flash_text_field.dart';
import 'package:flash_chat/screen/chat_screen.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});
  static const String id = 'registration_screen';

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final _auth = FirebaseAuth.instance;
  late String email;
  late String password;
  bool showSpinner = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ModalProgressHUD(
        inAsyncCall: showSpinner,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Flexible(
                child: SizedBox(
                  height: 150,
                  child: Hero(
                    tag: 'logo',
                    child: Image.asset(
                      'images/logo.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              FlashTextField(
                hintText: 'Email',
                prefixIcon: Icons.person,
                onChanged: (value) {
                  email = value;
                },
              ),
              FlashTextField(
                hintText: 'Password',
                prefixIcon: Icons.lock,
                obscureText: true,
                onChanged: (value) {
                  password = value;
                },
              ),
             Padding(
                padding: const EdgeInsets.only(top: 40),
                child: FlashButton(
                  buttonText: 'Register',
                  buttonColor: Colors.blueAccent,
                  onPressed: () async {
                    setState(() {
                      showSpinner = true;
                    });
                    try {
                      await _auth.createUserWithEmailAndPassword(
                          email: email, password: password);
                      if(mounted) {
                        Navigator.pushNamed(context, ChatScreen.id);
                      }
                      setState(() {
                        showSpinner = false;
                      });
                    }
                    catch (e) {
                      print(e);
                    }
                  },
                ),
              )
            ],
          ),
        ),
      ),

    );
  }
}
