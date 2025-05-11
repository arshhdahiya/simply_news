import 'package:flutter/material.dart';

enum STextWeight { normal, medium, semiBold, bold }

enum STextSize { twelve, fourteen, sixteen, eighteen, twenty }

enum STextColor {
  black,
  blue,
  red,
  green,
  yellow,
  orange,
  purple,
  grey,
  white,
}

class SText extends StatelessWidget {
  const SText(
    this.text, {
    super.key,
    required this.weight,
    required this.size,
    required this.color,
    this.isStrikethrough = false,
    this.textAlign,
    this.maxLines,
    this.overflow,
  });

  final String text;
  final STextWeight weight;
  final STextSize size;
  final STextColor color;
  final bool isStrikethrough;
  final TextAlign? textAlign;
  final int? maxLines;
  final TextOverflow? overflow;

  TextStyle _getTextStyle() {
    return TextStyle(
      fontSize: _getFontSize(),
      fontWeight: _getFontWeight(),
      color: _getTextColor(),
      decoration: isStrikethrough ? TextDecoration.lineThrough : null,
    );
  }

  double _getFontSize() {
    switch (size) {
      case STextSize.twelve:
        return 12;
      case STextSize.fourteen:
        return 14;
      case STextSize.sixteen:
        return 16;
      case STextSize.eighteen:
        return 18;
      case STextSize.twenty:
        return 20;
    }
  }

  FontWeight _getFontWeight() {
    switch (weight) {
      case STextWeight.normal:
        return FontWeight.normal;
      case STextWeight.medium:
        return FontWeight.w500;
      case STextWeight.semiBold:
        return FontWeight.w600;
      case STextWeight.bold:
        return FontWeight.bold;
    }
  }

  Color _getTextColor() {
    switch (color) {
      case STextColor.black:
        return Colors.black;
      case STextColor.blue:
        return Colors.blue;
      case STextColor.red:
        return Colors.red;
      case STextColor.green:
        return Colors.green;
      case STextColor.yellow:
        return Colors.yellow;
      case STextColor.orange:
        return Colors.orange;
      case STextColor.purple:
        return Colors.purple;
      case STextColor.grey:
        return Colors.grey;
      case STextColor.white:
        return Colors.white;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: _getTextStyle(),
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
    );
  }
}
