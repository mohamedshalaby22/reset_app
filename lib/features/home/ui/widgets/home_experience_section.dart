import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:reset_app/core/constants/app_images.dart';
import 'package:reset_app/core/helpers/spacing.dart';
import 'package:reset_app/core/theming/styles.dart';

class HomeExperienceSection extends StatelessWidget {
  const HomeExperienceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 1.1,
      child: SizedBox(
        height: 120,
        child: ListView.builder(
          itemCount: 7,
          padding: const EdgeInsetsDirectional.only(start: 10),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Stack(
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.only(start: 10),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      Assets.imagesHomeExperience,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
                PositionedDirectional(
                  end: 10,
                  top: 10,
                  child: Row(
                    children: [
                      Text(
                        'العلمين',
                        style: TextStyles.font12WhiteRegular,
                      ),
                      horizontalSpace(5),
                      const HugeIcon(
                          icon: HugeIcons.strokeRoundedLocation09,
                          color: Colors.white)
                    ],
                  ),
                ),
                PositionedDirectional(
                  start: 18,
                  bottom: 10,
                  child: Text(
                    'مول العلمين',
                    style: TextStyles.font16WhiteBold,
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
