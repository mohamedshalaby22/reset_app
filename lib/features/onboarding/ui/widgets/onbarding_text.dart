import 'package:flutter/material.dart';
import 'package:reset_app/core/helpers/spacing.dart';
import 'package:reset_app/core/theming/styles.dart';

class OnBoardingText extends StatelessWidget {
  const OnBoardingText({super.key, required this.currentIndex});
  final int currentIndex;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (currentIndex == 0)
          _buildOnBoardingText(
            title: 'حجز أسهل. إقامة أروع',
            subtitle: 'اكتشف أفضل الفنادق والغرف بنقرة واحدة',
          ),
        if (currentIndex == 1)
          _buildOnBoardingText(
            title: 'خطط لإقامتك بكل سهولة',
            subtitle: 'استمتع بأفضل العروض والأسعار على تطبيقنا',
          ),
        if (currentIndex == 2)
          _buildOnBoardingText(
              title: 'حجز سريع، راحة مضمونة',
              subtitle: 'جميع احتياجاتك في مكان واحد'),
      ],
    );
  }

  Column _buildOnBoardingText(
      {required String title, required String subtitle}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyles.font20YellowBold,
        ),
        verticalSpace(5),
        Text(
          subtitle,
          style: TextStyles.font16WhiteRegular,
        ),
      ],
    );
  }
}
