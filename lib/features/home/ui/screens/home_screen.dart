import 'package:flutter/material.dart';
import 'package:reset_app/core/helpers/spacing.dart';
import 'package:reset_app/core/theming/styles.dart';
import 'package:reset_app/features/home/ui/widgets/home_app_bar.dart';

import '../widgets/home_banner_section.dart';
import '../widgets/home_cities_section.dart';
import '../widgets/home_experience_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const HomeAppBar(),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'فين ما تسافر هتلاقى بيت',
                    style: TextStyles.font20BlackBold,
                  ),
                  verticalSpace(10),
                  const HomeCitiesSection(),
                  verticalSpace(15),
                  const HomeBannerSection(),
                  verticalSpace(20),
                  Text(
                    'تجارب مميزة',
                    style: TextStyles.font20BlackBold,
                  ),
                  verticalSpace(15),
                  const HomeExperienceSection(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
