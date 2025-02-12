import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reset_app/core/constants/app_images.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MainAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      automaticallyImplyLeading: false,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarBrightness:
            Platform.isIOS ? Brightness.dark : Brightness.light,
        statusBarIconBrightness:
            Platform.isIOS ? Brightness.dark : Brightness.light,
      ),
      flexibleSpace: Container(
        width: double.infinity,
        alignment: Alignment.center,
        child: Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            SvgPicture.asset(
              Assets.svgsAppbarImage,
              width: double.infinity,
              height: 300.h,
              fit: BoxFit.cover,
            ),
            PositionedDirectional(
              bottom: 50.h,
              child: SvgPicture.asset(
                Assets.svgsAppLogo,
                fit: BoxFit.fill,
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(Platform.isIOS ? 100.h : 150.h);
}
