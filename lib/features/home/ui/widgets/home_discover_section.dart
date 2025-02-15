import 'package:flutter/material.dart';
import 'package:reset_app/core/constants/app_images.dart';
import 'package:reset_app/features/home/ui/widgets/discover_card.dart';

class HomeDiscoverSection extends StatelessWidget {
  const HomeDiscoverSection({super.key});

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 1.1,
      child: SizedBox(
        height: 250,
        child: ListView.builder(
          itemCount: 7,
          padding: const EdgeInsetsDirectional.only(start: 20),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return DiscoverCard(
              image: Assets.imagesHomeDiscover,
              rate: '9.5',
              rateCount: '268',
              location: 'القاهره-التجمع الخامس',
              price: '1500',
              title: 'شقه بتصميم عصري وحديث',
              isFavorite: true,
              onToggleFavorite: () {},
            );
          },
        ),
      ),
    );
  }
}
