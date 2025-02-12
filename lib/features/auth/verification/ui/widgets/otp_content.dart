import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:reset_app/features/auth/verification/ui/widgets/otp_button.dart';
import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theming/styles.dart';
import '../../../signup/ui/widgets/welcome_message.dart';
import 'otp_pinput.dart';

class OtpContent extends StatelessWidget {
  const OtpContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const WelcomeMessage(
          title: 'ادخل رمز التحقق',
          subtitle:
              'لقد ارسلنا رمز التحقق بواسطة رسالة نصية الى ( 20123456789+ )',
        ),
        verticalSpace(35),
        Text(
          'رمز التحقق',
          style: TextStyles.font14MainBlueBold,
        ),
        verticalSpace(15),
        const Center(child: OtpPinput()),
        verticalSpace(35),
        OtpButton(
          title: 'اعادة ارسال بواسطة الموبايل',
          iconData: HugeIcons.strokeRoundedSmartPhone01,
          onTap: () {},
        ),
        OtpButton(
          title: 'ارسال بواسطة الواتساب',
          iconData: HugeIcons.strokeRoundedWhatsapp,
          onTap: () {},
        ),
      ],
    );
  }
}
