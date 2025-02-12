import 'package:flutter/material.dart';
import 'package:reset_app/core/constants/app_images.dart';
import 'package:reset_app/features/onboarding/ui/widgets/onboarding_content.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  List<String> images = [
    Assets.imagesOnboardingImage1,
    Assets.imagesOnboardingImage2,
    Assets.imagesOnboardingImage3
  ];

  final PageController controller = PageController();
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    //load images to cache
    for (var image in images) {
      precacheImage(AssetImage(image), context);
    }
  }

  int currentIndex = 0;
  void changeIndex(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            itemCount: images.length,
            scrollDirection: Axis.horizontal,
            controller: controller,
            physics: const ClampingScrollPhysics(),
            onPageChanged: (value) {
              changeIndex(value);
            },
            itemBuilder: (context, index) {
              return Image.asset(
                images[index],
                fit: BoxFit.cover,
                gaplessPlayback: true,
              );
            },
          ),
          OnBoardingContent(
            currentIndex: currentIndex,
            controller: controller,
          )
        ],
      ),
    );
  }
}
