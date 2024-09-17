import 'package:flutter/material.dart';
import 'package:flutter_application_2/core/constants/const_color.dart';

class AuthCustomButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  const AuthCustomButton(
      {super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: appBlue),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            backgroundColor: appBlue,
            foregroundColor: appWhite,
            fixedSize: const Size(200, 55),
            shadowColor: appTransparent,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
        child: Text(
          text,
          style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}
