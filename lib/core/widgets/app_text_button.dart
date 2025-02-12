import 'package:flutter/material.dart';

import '../theming/colors.dart';
import '../theming/styles.dart';

class AppTextButton extends StatelessWidget {
  const AppTextButton({
    super.key,
    required this.buttonText,
    this.borderRadius,
    this.buttonWidth,
    this.buttonHeight,
    this.textStyle,
    this.backgroundColor,
    this.borderColor,
    required this.onPressed,
  });
  final String buttonText;
  final double? borderRadius, buttonWidth, buttonHeight;
  final Color? backgroundColor, borderColor;
  final VoidCallback onPressed;
  final TextStyle? textStyle;
  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor ?? ColorsManager.mainBlue,
          shape: RoundedRectangleBorder(
              side: BorderSide(
                  color: borderColor ?? Colors.transparent, width: 0.8),
              borderRadius: BorderRadius.circular(borderRadius ?? 16)),
          minimumSize: Size(buttonWidth ?? double.infinity, buttonHeight ?? 56),
        ),
        onPressed: onPressed,
        child: Text(
          buttonText,
          style: textStyle ?? TextStyles.font18WhiteBold,
        ));
  }
}
