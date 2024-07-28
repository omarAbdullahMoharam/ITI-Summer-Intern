import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final TextEditingController? controller;
  final String hintText;
  final String labelText;
  final Icon icon;
  final bool obscureText;
  final FormFieldValidator<String>? validator;

  const CustomInputField({
    super.key,
    this.controller,
    required this.hintText,
    required this.labelText,
    required this.icon,
    required this.obscureText,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        icon: icon,
        border: const OutlineInputBorder(
          borderSide: BorderSide(width: 2, color: Color(0xff050522)),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(width: 2, color: Color(0xff050522)),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(width: 2, color: Color(0xff050522)),
        ),
      ),
      validator: validator,
    );
  }
}


//  Icon(Icons.remove_red_eye_outlined)