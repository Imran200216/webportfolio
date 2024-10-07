import 'package:flutter/material.dart';

class CustomTextBtn extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final Color textBtnColor;
  final double fontSize;

  const CustomTextBtn({
    super.key,
    required this.title,
    required this.textBtnColor,
    required this.onTap,
    required this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return TextButton(
      onPressed: onTap,
      child: Text(
        title,
        style: TextStyle(
          fontFamily: "OpenSans",
          fontSize: fontSize,
          color: textBtnColor,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
