import 'package:flutter/material.dart';
import 'package:reset_app/core/helpers/navigation_extension.dart';
import 'package:reset_app/core/helpers/spacing.dart';
import 'package:reset_app/core/routing/routes.dart';
import 'package:reset_app/core/widgets/app_text_button.dart';
import 'package:reset_app/features/auth/login/ui/widgets/login_form.dart';
import 'package:reset_app/features/auth/signup/ui/widgets/terms_and_conditions_text.dart';
import '../../../../core/widgets/main_appbar.dart';
import '../../signup/ui/widgets/welcome_message.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MainAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: WelcomeMessage(
                  title: 'ادخل الاسم و البريد الالكتروني',
                  isShowSubtitle: false,
                ),
              ),
              verticalSpace(20),
              const LoginForm(),
              verticalSpace(25),
              const TermsAndConditionsText(),
            ],
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
