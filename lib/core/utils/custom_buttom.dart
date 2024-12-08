import 'package:flutter/material.dart';

class CustomButtom extends StatelessWidget {
  const CustomButtom(
      {this.onPressed,
      this.borderRadius,
      required this.backgroundColor,
      required this.textColor,
      required this.title,
      required this.fontSize});
  final BorderRadius? borderRadius;
  final Color textColor;
  final Color backgroundColor;
  final String title;
  final TextStyle fontSize;
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          title,
          style: fontSize,
        ),
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
              borderRadius: borderRadius ?? BorderRadius.circular(16)),
          backgroundColor: backgroundColor,
        ),
      ),
    );
  }
}
