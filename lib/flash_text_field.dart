import 'package:flutter/material.dart';

class FlashTextField extends StatelessWidget {
  const FlashTextField({
    super.key,
    this.prefixIcon,
    required this.insideTextColor,
    required this.borderSide,
    required this.hintText,
  });

  final IconData? prefixIcon;
  final Color insideTextColor;
  final Color borderSide;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.symmetric(vertical: 10),
      child: TextField(
        decoration: InputDecoration(
            border:OutlineInputBorder(
                borderRadius:const BorderRadius.all(Radius.circular(10)),
                borderSide:BorderSide(color: borderSide)
            ),
            prefixIcon: prefixIcon != null
                ? Icon(prefixIcon, color: insideTextColor) : null,
            hintText: hintText,
            hintStyle: TextStyle(color: insideTextColor)
        ),
      ),
    );
  }
}