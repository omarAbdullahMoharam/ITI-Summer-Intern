import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final String hintText;
  final String labelText;
  final Icon icon;
  final bool obscureText;

  const CustomInputField({
    super.key,
    required this.hintText,
    required this.labelText,
    required this.icon,
    required this.obscureText,
  });
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: labelText,
        border: const OutlineInputBorder(
            borderSide: BorderSide(
          width: 2,
          color: Color(0xff050522),
        )),
        hintText: hintText,
        suffixIcon: icon,
      ),
    );
  }
}


//  Icon(Icons.remove_red_eye_outlined)