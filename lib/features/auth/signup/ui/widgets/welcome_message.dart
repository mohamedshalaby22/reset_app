import 'package:flutter/material.dart';
import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theming/styles.dart';

class WelcomeMessage extends StatelessWidget {
  const WelcomeMessage(
      {super.key, required this.title,  this.subtitle='',this.isShowSubtitle=true});
  final String title, subtitle;
  final bool isShowSubtitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        verticalSpace(20),
        Text(
          title,
          style: TextStyles.font16MainBlueBold,
        ),
         if(isShowSubtitle)  Column(
          children: [
            verticalSpace(20),
            Text(
              subtitle,
              style: TextStyles.font14BlackRegular,
            ),
          ],
        )
      ],
    );
  }
}
