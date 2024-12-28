import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final bool obscureText;
  final TextStyle? hintStyle;
  final TextStyle? textStyle;

  // Constructor with required parameters
  const CustomTextField({
    super.key,
    required this.hintText,
    required this.controller,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
    this.hintStyle,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    // Get the current theme to handle colors dynamically
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return TextField(
      controller: controller,
      keyboardType: keyboardType,
      obscureText: obscureText,
      style: textStyle ??
          TextStyle(
            color: isDarkMode ? Colors.white : Colors.black,
          ),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: hintStyle ??
            TextStyle(
              color: isDarkMode ? Colors.grey.shade500 : Colors.grey.shade700,
            ),
        filled: true,
        fillColor: isDarkMode ? Colors.grey.shade800 : Colors.grey.shade200,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
