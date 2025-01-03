import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final TextStyle? style;

  const CustomText({
    Key? key,
    required this.text,
    this.style,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Menggabungkan default style dengan style yang diberikan
    final defaultStyle = const TextStyle(
      fontSize: 14,
      fontFamily: 'SF Pro Text', // Sesuaikan dengan nama font di pubspec.yaml
    );

    return Text(
      text,
      textAlign: TextAlign.center,
      style: style != null ? defaultStyle.merge(style) : defaultStyle,
    );
  }
}
