import 'package:flutter/material.dart';
import 'package:reset_app/core/constants/app_images.dart';
import 'package:reset_app/features/home/ui/widgets/selected_unit_card.dart';

class HomeSelectedUnitsSection extends StatelessWidget {
  const HomeSelectedUnitsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 2,
      padding: EdgeInsetsDirectional.zero,
      itemBuilder: (context, index) {
        return SelectedUnitCard(
          image: Assets.imagesHomeSelectedUnits,
          rate: '9.5',
          rateCount: '268',
          location: 'القاهره-التجمع الخامس',
          price: '1500',
          title: 'شقه بتصميم عصري وحديث',
          isFavorite: true,
          onToggleFavorite: () {},
          bedCount: '3',
          bathroomCount: '1',
          livingRoomCount: '1',
        );
      },
    );
  }
}
