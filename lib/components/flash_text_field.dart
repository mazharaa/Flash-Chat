import 'package:flutter/material.dart';

class FlashTextField extends StatelessWidget {
  const FlashTextField({
    super.key,
    this.prefixIcon,
    required this.hintText,
    this.onChanged,
    this.obscureText = false,
    this.controller
  });

  final IconData? prefixIcon;
  final String hintText;
  final ValueChanged<String>? onChanged;
  final bool obscureText;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.symmetric(vertical: 10),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        onChanged: onChanged,
        decoration: InputDecoration(
          border:const OutlineInputBorder(
            borderRadius:BorderRadius.all(Radius.circular(10)),
            borderSide:BorderSide(color: Colors.grey)
          ),
          prefixIcon: prefixIcon != null
            ? Icon(prefixIcon, color: Colors.grey) : null,
          hintText: hintText,
          hintStyle: const TextStyle(color: Colors.grey)
        ),
      ),
    );
  }
}