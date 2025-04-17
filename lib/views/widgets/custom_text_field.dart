import 'package:flutter/material.dart';
import 'package:noote_app/constats.dart';

class CustomFormTextField extends StatelessWidget {
  final String? hintText;

  CustomFormTextField({
    super.key,
    this.onChange,
    this.hintText,
    this.obscureText = false,
  });
  Function(String)? onChange;
  bool obscureText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: kPrimaryColor,
      obscureText: obscureText,
      validator: (data) {
        if (data!.isEmpty) {
          return 'Field is required';
        }
        return null;
      },
      onChanged: onChange ?? (data) {},
      decoration: InputDecoration(
        hintStyle: TextStyle(color: kPrimaryColor),
        hintText: hintText,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        border: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: kPrimaryColor),
        ),
      ),
    );
  }
}
