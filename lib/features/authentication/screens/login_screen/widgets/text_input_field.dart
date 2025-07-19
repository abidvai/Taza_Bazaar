import 'package:flutter/material.dart';

Widget aTextInputField({
  required String hint,
  required IconData prefix,
  IconData? suffix,
  required String? Function(String?) validation,
  bool? obscureText,
  TextInputType? keyboardType,
  required TextEditingController controller,
}) {
  return TextFormField(
    controller: controller,
    decoration: InputDecoration(
      hintText: hint,
      prefixIcon: Icon(prefix),
      suffixIcon: Icon(suffix),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: Colors.black, width: 2),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: Colors.black, width: 1),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(
          color: Colors.black,
          width: 2
        )
      )
    ),
    validator: validation,
    obscureText: obscureText ?? false,
    keyboardType: keyboardType,
  );
}
