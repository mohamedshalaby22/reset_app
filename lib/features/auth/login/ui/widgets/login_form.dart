import 'package:flutter/material.dart';
import 'package:reset_app/core/helpers/spacing.dart';
import 'package:reset_app/core/theming/styles.dart';
import 'package:reset_app/core/widgets/app_text_form_field.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('الاسم', style: TextStyles.font14MainBlueBold),
          verticalSpace(15),
          AppTextFormField(
            hintText: 'الاسم',
            validator: (value) {},
          ),
          verticalSpace(20),
          Text('البريد الالكتروني', style: TextStyles.font14MainBlueBold),
          verticalSpace(15),
          AppTextFormField(
            hintText: 'name@email.com',
            validator: (value) {},
          ),
        ],
      ),
    );
  }
}
