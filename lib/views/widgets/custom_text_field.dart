import 'package:flutter/material.dart';
import 'package:noote_app/constats.dart';

class CustomFormTextField extends StatelessWidget {
  final String hintText;

  final void Function(String?)? onSaved;
  final void Function(String?)? onChanged;
  final int maxLines;
  const CustomFormTextField({
    super.key,
    this.maxLines = 1,
    required this.hintText,
     this.onSaved,
     this.onChanged
   
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      onSaved: onSaved,
      maxLines: maxLines,
      cursorColor: kPrimaryColor,
      validator: (data) {
        if (data?.isEmpty ?? true) {
          return 'Field is required';
        }
        return null;
      },
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
