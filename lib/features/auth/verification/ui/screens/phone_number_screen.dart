import 'package:flutter/material.dart';
import 'package:reset_app/core/helpers/navigation_extension.dart';
import 'package:reset_app/core/widgets/app_text_button.dart';
import 'package:reset_app/features/auth/verification/ui/widgets/phone_number_content.dart';
import '../../../../../core/routing/routes.dart';
import '../../../../../core/widgets/main_appbar.dart';

class PhoneNumberScreen extends StatelessWidget {
  const PhoneNumberScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MainAppBar(),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              PhoneNumberContent(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0.0,
        color: Colors.transparent,
        child: AppTextButton(
            buttonText: 'دخول',
            onPressed: () {
              context.pushNamed(Routes.otpScreen);
            }),
      ),
    );
  }
}
