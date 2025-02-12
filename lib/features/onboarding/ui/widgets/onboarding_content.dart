import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reset_app/core/helpers/navigation_extension.dart';
import 'package:reset_app/core/helpers/spacing.dart';
import 'package:reset_app/core/theming/colors.dart';
import 'package:reset_app/core/theming/styles.dart';
import 'package:reset_app/core/widgets/app_text_button.dart';
import '../../../../core/routing/routes.dart';
import 'dots_indicator.dart';
import 'onbarding_text.dart';

// ignore: must_be_immutable
class OnBoardingContent extends StatelessWidget {
  OnBoardingContent(
      {super.key, required this.currentIndex, required this.controller});
  final int currentIndex;
  PageController controller = PageController();

  void onContinue({required BuildContext context}) {
    controller.nextPage(
      duration: const Duration(milliseconds: 500),
      curve: Curves.fastOutSlowIn,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional.bottomCenter,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 300.h, left: 20.w, right: 20.w),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                DotsIndicator(currentIndex: currentIndex),
                verticalSpace(50),
                Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: OnBoardingText(currentIndex: currentIndex),
                ),
              ],
            ),
          ),
          verticalSpace(80),
          Padding(
            padding: EdgeInsets.only(bottom: 50, left: 20.w, right: 20.w),
            child: Visibility(
              visible: currentIndex != 2,
              replacement: AppTextButton(
                  buttonText: 'إلي التطبيق',
                  onPressed: () {
                    context.pushReplacementNamed(Routes.signupScreen);
                  }),
              child: Row(
                children: [
                  Expanded(
                      child: AppTextButton(
                    backgroundColor: ColorsManager.mainBlue,
                    buttonText: 'التالي',
                    onPressed: () {
                      onContinue(context: context);
                    },
                  )),
                  horizontalSpace(15),
                  Expanded(
                    child: AppTextButton(
                      backgroundColor: Colors.transparent,
                      borderColor: ColorsManager.mainBlue,
                      textStyle: TextStyles.font18MainBlueBold,
                      buttonText: 'تخطي',
                      onPressed: () {
                        controller.jumpToPage(2);
                      },
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
