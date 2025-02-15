import 'package:flutter/material.dart';
import 'package:reset_app/core/constants/app_images.dart';
import 'package:reset_app/core/theming/styles.dart';

class HomeMoodUnitsSection extends StatelessWidget {
  const HomeMoodUnitsSection({super.key});

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
                      Assets.imagesHomeUnits,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
               
                PositionedDirectional(
                  start: 18,
                  bottom: 10,
                  child: Text(
                   'شاليهات',
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
