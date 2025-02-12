import 'package:flutter/material.dart';
import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theming/styles.dart';
import '../../../signup/ui/widgets/welcome_message.dart';
import 'phone_number_form_field.dart';

class PhoneNumberContent extends StatelessWidget {
  const PhoneNumberContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const WelcomeMessage(
          title: 'اهلا بك معنا !',
          subtitle: 'ادخل رقم الموبايل لانشاء حساب او لتسجيل الدخول',
        ),
        verticalSpace(25),
        PhoneNumberFormField(phoneController: TextEditingController()),
        verticalSpace(25),
        Text(
          'سنقوم بارسال رسالة الى الرقم المدخل تحتوي على كود للمتابعة. تأكد من ادخال رقمك بشكل صحيح.',
          style: TextStyles.font12Black54Regular,
        )
      ],
    );
  }
}
