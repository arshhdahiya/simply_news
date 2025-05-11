import 'package:flutter/material.dart';

enum STextTheme {
  // Font size 12
  twelveNormalBlack,
  twelveMediumBlack,
  twelveSemiBoldBlack,
  twelveBoldBlack,
  twelveNormalBlue,
  twelveMediumBlue,
  twelveSemiBoldBlue,
  twelveBoldBlue,

  // Font size 14
  fourteenNormalBlack,
  fourteenMediumBlack,
  fourteenSemiBoldBlack,
  fourteenBoldBlack,
  fourteenNormalBlue,
  fourteenMediumBlue,
  fourteenSemiBoldBlue,
  fourteenBoldBlue,

  // Font size 16
  sixteenNormalBlack,
  sixteenMediumBlack,
  sixteenSemiBoldBlack,
  sixteenBoldBlack,
  sixteenNormalBlue,
  sixteenMediumBlue,
  sixteenSemiBoldBlue,
  sixteenBoldBlue,

  // Font size 18
  eighteenNormalBlack,
  eighteenMediumBlack,
  eighteenSemiBoldBlack,
  eighteenBoldBlack,
  eighteenNormalBlue,
  eighteenMediumBlue,
  eighteenSemiBoldBlue,
  eighteenBoldBlue,

  // Font size 20
  twentyNormalBlack,
  twentyMediumBlack,
  twentySemiBoldBlack,
  twentyBoldBlack,
  twentyNormalBlue,
  twentyMediumBlue,
  twentySemiBoldBlue,
  twentyBoldBlue,
}

class SThemedText extends StatelessWidget {
  const SThemedText(
    this.text, {
    super.key,
    required this.theme,
    this.textAlign,
    this.maxLines,
    this.overflow,
    this.isStrikethrough = false,
  });

  final String text;
  final STextTheme theme;
  final TextAlign? textAlign;
  final int? maxLines;
  final TextOverflow? overflow;
  final bool isStrikethrough;

  TextStyle _getTextStyle() {
    final Map<STextTheme, TextStyle> styles = {
      // 12px size
      STextTheme.twelveNormalBlack: const TextStyle(
          fontSize: 12, fontWeight: FontWeight.normal, color: Colors.black),
      STextTheme.twelveMediumBlack: const TextStyle(
          fontSize: 12, fontWeight: FontWeight.w500, color: Colors.black),
      STextTheme.twelveSemiBoldBlack: const TextStyle(
          fontSize: 12, fontWeight: FontWeight.w600, color: Colors.black),
      STextTheme.twelveBoldBlack: const TextStyle(
          fontSize: 12, fontWeight: FontWeight.bold, color: Colors.black),
      STextTheme.twelveNormalBlue: const TextStyle(
          fontSize: 12, fontWeight: FontWeight.normal, color: Colors.blue),
      STextTheme.twelveMediumBlue: const TextStyle(
          fontSize: 12, fontWeight: FontWeight.w500, color: Colors.blue),
      STextTheme.twelveSemiBoldBlue: const TextStyle(
          fontSize: 12, fontWeight: FontWeight.w600, color: Colors.blue),
      STextTheme.twelveBoldBlue: const TextStyle(
          fontSize: 12, fontWeight: FontWeight.bold, color: Colors.blue),

      // 14px size
      STextTheme.fourteenNormalBlack: const TextStyle(
          fontSize: 14, fontWeight: FontWeight.normal, color: Colors.black),
      STextTheme.fourteenMediumBlack: const TextStyle(
          fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black),
      STextTheme.fourteenSemiBoldBlack: const TextStyle(
          fontSize: 14, fontWeight: FontWeight.w600, color: Colors.black),
      STextTheme.fourteenBoldBlack: const TextStyle(
          fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black),
      STextTheme.fourteenNormalBlue: const TextStyle(
          fontSize: 14, fontWeight: FontWeight.normal, color: Colors.blue),
      STextTheme.fourteenMediumBlue: const TextStyle(
          fontSize: 14, fontWeight: FontWeight.w500, color: Colors.blue),
      STextTheme.fourteenSemiBoldBlue: const TextStyle(
          fontSize: 14, fontWeight: FontWeight.w600, color: Colors.blue),
      STextTheme.fourteenBoldBlue: const TextStyle(
          fontSize: 14, fontWeight: FontWeight.bold, color: Colors.blue),

      // 16px size
      STextTheme.sixteenNormalBlack: const TextStyle(
          fontSize: 16, fontWeight: FontWeight.normal, color: Colors.black),
      STextTheme.sixteenMediumBlack: const TextStyle(
          fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black),
      STextTheme.sixteenSemiBoldBlack: const TextStyle(
          fontSize: 16, fontWeight: FontWeight.w600, color: Colors.black),
      STextTheme.sixteenBoldBlack: const TextStyle(
          fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
      STextTheme.sixteenNormalBlue: const TextStyle(
          fontSize: 16, fontWeight: FontWeight.normal, color: Colors.blue),
      STextTheme.sixteenMediumBlue: const TextStyle(
          fontSize: 16, fontWeight: FontWeight.w500, color: Colors.blue),
      STextTheme.sixteenSemiBoldBlue: const TextStyle(
          fontSize: 16, fontWeight: FontWeight.w600, color: Colors.blue),
      STextTheme.sixteenBoldBlue: const TextStyle(
          fontSize: 16, fontWeight: FontWeight.bold, color: Colors.blue),

      // 18px size
      STextTheme.eighteenNormalBlack: const TextStyle(
          fontSize: 18, fontWeight: FontWeight.normal, color: Colors.black),
      STextTheme.eighteenMediumBlack: const TextStyle(
          fontSize: 18, fontWeight: FontWeight.w500, color: Colors.black),
      STextTheme.eighteenSemiBoldBlack: const TextStyle(
          fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black),
      STextTheme.eighteenBoldBlack: const TextStyle(
          fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
      STextTheme.eighteenNormalBlue: const TextStyle(
          fontSize: 18, fontWeight: FontWeight.normal, color: Colors.blue),
      STextTheme.eighteenMediumBlue: const TextStyle(
          fontSize: 18, fontWeight: FontWeight.w500, color: Colors.blue),
      STextTheme.eighteenSemiBoldBlue: const TextStyle(
          fontSize: 18, fontWeight: FontWeight.w600, color: Colors.blue),
      STextTheme.eighteenBoldBlue: const TextStyle(
          fontSize: 18, fontWeight: FontWeight.bold, color: Colors.blue),

      // 20px size
      STextTheme.twentyNormalBlack: const TextStyle(
          fontSize: 20, fontWeight: FontWeight.normal, color: Colors.black),
      STextTheme.twentyMediumBlack: const TextStyle(
          fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black),
      STextTheme.twentySemiBoldBlack: const TextStyle(
          fontSize: 20, fontWeight: FontWeight.w600, color: Colors.black),
      STextTheme.twentyBoldBlack: const TextStyle(
          fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
      STextTheme.twentyNormalBlue: const TextStyle(
          fontSize: 20, fontWeight: FontWeight.normal, color: Colors.blue),
      STextTheme.twentyMediumBlue: const TextStyle(
          fontSize: 20, fontWeight: FontWeight.w500, color: Colors.blue),
      STextTheme.twentySemiBoldBlue: const TextStyle(
          fontSize: 20, fontWeight: FontWeight.w600, color: Colors.blue),
      STextTheme.twentyBoldBlue: const TextStyle(
          fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blue),
    };

    return styles[theme]!.copyWith(
      decoration: isStrikethrough ? TextDecoration.lineThrough : null,
    );
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
