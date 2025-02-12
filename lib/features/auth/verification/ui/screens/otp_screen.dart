import 'package:flutter/material.dart';
import 'package:reset_app/core/widgets/app_text_button.dart';
import '../../../../../core/widgets/main_appbar.dart';
import '../widgets/otp_content.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

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
              OtpContent(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0.0,
        color: Colors.transparent,
        child: AppTextButton(buttonText: 'تحقق', onPressed: () {}),
      ),
    );
  }
}
