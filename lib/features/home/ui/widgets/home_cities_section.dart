import 'package:flutter/material.dart';
import 'package:reset_app/core/constants/app_images.dart';
import 'package:reset_app/core/helpers/spacing.dart';
import 'package:reset_app/core/theming/styles.dart' show TextStyles;

class HomeCitiesSection extends StatelessWidget {
  const HomeCitiesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 1.1,
      child: SizedBox(
        height: 90,
        child: ListView.builder(
          itemCount: 7,
          padding: const EdgeInsetsDirectional.only(start: 10),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsetsDirectional.only(start: 10),
              child: Column(
                children: [
                  const CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(
                      Assets.imagesCity,
                    ),
                  ),
                  verticalSpace(10),
                  Text(
                    'القاهرة',
                    style: TextStyles.font12BlackRegular,
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
