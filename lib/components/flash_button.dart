import 'package:flutter/material.dart';

class FlashButton extends StatelessWidget {
  const FlashButton({
    super.key,
    required this.buttonText,
    required this.buttonColor,
    required this.onPressed
  });

  final String buttonText;
  final MaterialAccentColor buttonColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: ElevatedButton(
        onPressed: onPressed,
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