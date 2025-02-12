import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:reset_app/core/theming/styles.dart';

import '../../../../../core/helpers/spacing.dart';

class OtpButton extends StatelessWidget {
  const OtpButton({
    super.key,
    required this.title,
    required this.iconData,
    required this.onTap,
  });
  final String title;
  final IconData iconData;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(bottom: 20.h),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey, width: 0.7),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            HugeIcon(
              icon: iconData,
              color: Colors.grey,
            ),
            horizontalSpace(15),
            Text(
              title,
              style: TextStyles.font14MainBlueBold,
            ),
          ],
        ),
      ),
    );
  }
}
