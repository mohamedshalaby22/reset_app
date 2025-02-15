import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/styles.dart';

class OtpPinput extends StatelessWidget {
  const OtpPinput({super.key});

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 75,
      height: 50,
      textStyle: TextStyles.font18WhiteBold,
      decoration: BoxDecoration(
        color: Colors.grey[50],
        border: Border.all(color: ColorsManager.mainBlue),
        borderRadius: BorderRadius.circular(10),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: ColorsManager.mainBlue),
      borderRadius: BorderRadius.circular(10),
    );
    final submittedPinTheme = defaultPinTheme.copyWith(
        decoration: defaultPinTheme.decoration!.copyWith(
          color: ColorsManager.mainBlue,
        ),
        textStyle: defaultPinTheme.textStyle!.copyWith(color: Colors.white));
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Pinput(
        length: 4,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        controller: TextEditingController(),
        defaultPinTheme: defaultPinTheme,
        focusedPinTheme: focusedPinTheme,
        submittedPinTheme: submittedPinTheme,
        cursor: Container(
          width: 12,
          height: 2.5,
          color: ColorsManager.mainBlue,
        ),
        // validator: (s) {
        //   return s == '123456' ? null : 'Pin is incorrect';
        // },
        pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
        showCursor: true,
      ),
    );
  }
}
