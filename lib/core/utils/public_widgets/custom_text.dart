
import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    this.colorText,
    required this.text,
    this.fontWeight,
    this.fontSize,
    this.textAlign,
    this.maxLines,
    this.fontFamily,
    this.letterSpacing,
    super.key,
  });

  final Color? colorText;
  final String text;
  final FontWeight? fontWeight;
  final double? fontSize;
  final TextAlign? textAlign;
  final int? maxLines;
  final String? fontFamily;
  final double? letterSpacing;
  @override
  Widget build(BuildContext context) {
    return  Text(
      text,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: colorText,
        fontFamily: fontFamily,
       letterSpacing: letterSpacing,
       height: 1.12,
      ),
    );
  }
}