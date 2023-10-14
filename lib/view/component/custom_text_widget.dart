import 'package:flutter/material.dart';
import 'package:todo/view_model/utils/colors.dart';

class TextCustom extends StatelessWidget {
  final String? data;
  final Color color;
  final FontWeight fontWeight;
  final double fontSize;

  const TextCustom({
    super.key,
    this.data,
    this.color = AppColors.primaryTextColor,
    this.fontWeight = FontWeight.bold,
    this.fontSize = 20,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      data ?? "",
      style: TextStyle(
        color: color,
        fontWeight: fontWeight,
        fontSize: fontSize,
        letterSpacing: 1,
      ),
    );
  }
}
