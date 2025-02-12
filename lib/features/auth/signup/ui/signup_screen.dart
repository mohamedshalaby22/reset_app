import 'package:flutter/material.dart';
import 'package:reset_app/core/helpers/navigation_extension.dart';
import 'package:reset_app/core/helpers/spacing.dart';
import 'package:reset_app/core/widgets/app_text_button.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/widgets/main_appbar.dart';
import 'widgets/signup_form.dart';
import 'widgets/terms_and_conditions_text.dart';
import 'widgets/welcome_message.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MainAppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const WelcomeMessage(
                  title: 'ادخل الاسم و البريد الالكتروني',
                  subtitle:
                      'بتوصلك رسائل بحجوزات عقارك و الخدمات اللي بنقدمها  لك على بريدك الالكتروني',
                ),
                verticalSpace(15),
                const SignupForm(),
                verticalSpace(25),
                const TermsAndConditionsText(),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0.0,
        color: Colors.transparent,
        child: AppTextButton(
            buttonText: 'تسجيل',
            onPressed: () {
              context.pushNamed(Routes.phoneNumberScreen);
            }),
      ),
    );
  }
}
