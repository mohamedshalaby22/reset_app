import 'package:flutter/material.dart';
import 'package:reset_app/core/theming/colors.dart';

class DotsIndicator extends StatelessWidget {
  const DotsIndicator({super.key, required this.currentIndex});
  final int currentIndex;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        3,
        (index) => AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          margin: const EdgeInsetsDirectional.only(end: 5),
          width: currentIndex == index ? 40 : 15,
          height: 6,
          decoration: BoxDecoration(
            color: currentIndex == index ? ColorsManager.yellow : Colors.white,
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
    );
  }
}
