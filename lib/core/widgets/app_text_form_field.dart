import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reset_app/core/theming/colors.dart';
import 'package:reset_app/core/theming/styles.dart';

class AppTextFormField extends StatelessWidget {
  const AppTextFormField(
      {super.key,
      this.enabledBorder,
      this.focusedBorder,
      required this.hintText,
      this.contentPadding,
      this.backgroundColor,
      this.hintStyle,
      this.textStyle,
      this.isObscureText,
      this.suffixIcon,
      this.prefixIcon,
      this.controller,
      this.maxLines,
      this.textInputType,
      this.inputFormatters,
      required this.validator});
  final InputBorder? enabledBorder, focusedBorder;
  final String hintText;
  final EdgeInsetsGeometry? contentPadding;
  final Color? backgroundColor;
  final TextStyle? hintStyle, textStyle;
  final bool? isObscureText;
  final Widget? prefixIcon, suffixIcon;
  final int? maxLines;
  final TextInputType? textInputType;
  final TextEditingController? controller;
  final List<TextInputFormatter>? inputFormatters;
  final Function(String?) validator;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      onTapOutside: (event) {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      inputFormatters: inputFormatters ?? [],
      validator: (value) {
        return validator(value);
      },
      style: textStyle ?? TextStyles.font14BlackRegular,
      obscureText: isObscureText ?? false,
      cursorColor: ColorsManager.mainBlue,
      maxLines: maxLines ?? 1,
      keyboardType: textInputType ?? TextInputType.text,
      decoration: InputDecoration(
          isDense: true,
          contentPadding: contentPadding ??
              EdgeInsets.symmetric(horizontal: 20.w, vertical: 12.h),
          focusedBorder: focusedBorder ??
              OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide:
                    const BorderSide(color: ColorsManager.mainBlue, width: 1.1),
              ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Colors.grey, width: 1.1),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Colors.red, width: 1.1),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Colors.red, width: 1.1),
          ),
          fillColor: Colors.grey[50],
          filled: true,
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          hintStyle: hintStyle ?? TextStyles.font14GreyMedium,
          hintText: hintText),
    );
  }
}
