import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  TextStyle style;
  final TextAlign textAlign;

  CustomText({super.key,
    required this.text,
    this.textAlign = TextAlign.start,
    required this.style});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style,
      textAlign: textAlign,
    );
  }
}