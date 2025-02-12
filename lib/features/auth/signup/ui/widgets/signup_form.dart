import 'package:flutter/material.dart';
import 'package:reset_app/core/helpers/navigation_extension.dart';
import 'package:reset_app/core/helpers/spacing.dart';
import 'package:reset_app/core/routing/routes.dart';
import 'package:reset_app/core/theming/styles.dart';
import 'package:reset_app/core/widgets/app_text_form_field.dart';
import '../../../../../core/theming/colors.dart';

class SignupForm extends StatefulWidget {
  const SignupForm({super.key});

  @override
  State<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  bool isPasswordObscureText = true;

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
          verticalSpace(20),
          Text('كلمة المرور ', style: TextStyles.font14MainBlueBold),
          verticalSpace(15),
          AppTextFormField(
            hintText: 'كلمة المرور',
            prefixIcon: const Icon(Icons.lock, color: ColorsManager.mainBlue),
            suffixIcon: GestureDetector(
                onTap: () {
                  setState(() {
                    isPasswordObscureText = !isPasswordObscureText;
                  });
                },
                child: Icon(
                    isPasswordObscureText
                        ? Icons.visibility
                        : Icons.visibility_off,
                    color: ColorsManager.mainBlue)),
            validator: (value) {},
          ),
          verticalSpace(25),
          GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () => context.pushNamed(Routes.loginScreen),
            child: Text('ليس لدى حساب اشتراك جديد',
                style: TextStyles.font14MainBlueBold),
          ),
         
        ],
      ),
    );
  }
}
