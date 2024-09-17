// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_application_2/core/constants/const_color.dart';

class AuthField extends StatelessWidget {
  final TextEditingController controller;
  final bool obscureText;
  final String text;
  const AuthField({
    super.key,
    required this.controller,
    this.obscureText = false,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      controller: controller,
      decoration: InputDecoration(
          hintText: text,
          fillColor: appWhite,
          filled: true,
          border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(12))),
      validator: (value) {
        if (value!.isEmpty) {
          return "$text is missing !";
        }
        return null;
      },
    );
  }
}
