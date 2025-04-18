import 'package:flutter/material.dart';
import 'package:noote_app/constats.dart';

class CustomButton extends StatelessWidget {
  final String text;

  CustomButton({
    super.key,
    this.onTap,
    required this.text,
    this.isLoading = false,
  });
  void Function()? onTap;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(8),
        ),
        width: MediaQuery.of(context).size.width,
        height: 55,
        child: Center(
          child:
              isLoading
                  ? CircularProgressIndicator(color: Colors.black)
                  : Text(
                    text,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
        ),
      ),
    );
  }
}
