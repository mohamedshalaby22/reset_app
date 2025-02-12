import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reset_app/core/constants/app_constants.dart';
import 'package:reset_app/core/theming/colors.dart';
import 'package:reset_app/core/theming/font_weight_helper.dart';

class TextStyles {
  static TextStyle font20YellowBold = TextStyle(
    fontSize: 20.sp,
    color: ColorsManager.yellow,
    fontWeight: FontWeightHelper.bold,
    fontFamily: AppConstants.appFontFamily,
  );
  static TextStyle font16WhiteRegular = TextStyle(
    fontSize: 16.sp,
    color: Colors.white,
    fontWeight: FontWeightHelper.regular,
    fontFamily: AppConstants.appFontFamily,
  );
  static TextStyle font16MainBlueBold = TextStyle(
    fontSize: 16.sp,
    color: ColorsManager.mainBlue,
    fontWeight: FontWeightHelper.bold,
    fontFamily: AppConstants.appFontFamily,
  );
  static TextStyle font18WhiteBold = TextStyle(
    fontSize: 18.sp,
    color: Colors.white,
    fontWeight: FontWeightHelper.bold,
    fontFamily: AppConstants.appFontFamily,
  );
  static TextStyle font18MainBlueBold = TextStyle(
    fontSize: 18.sp,
    color: ColorsManager.mainBlue,
    fontWeight: FontWeightHelper.bold,
    fontFamily: AppConstants.appFontFamily,
  );

  static TextStyle font14BlackRegular = TextStyle(
    fontSize: 14.sp,
    color: Colors.black,
    fontWeight: FontWeightHelper.regular,
    fontFamily: AppConstants.appFontFamily,
  );
  static TextStyle font14MainBlueBold = TextStyle(
    fontSize: 14.sp,
    color: ColorsManager.mainBlue,
    fontWeight: FontWeightHelper.bold,
    fontFamily: AppConstants.appFontFamily,
  );
  static TextStyle font14GreyMedium = TextStyle(
    fontSize: 14.sp,
    color: Colors.grey,
    fontWeight: FontWeightHelper.medium,
    fontFamily: AppConstants.appFontFamily,
  );
  static TextStyle font12Black54Regular = TextStyle(
    fontSize: 12.sp,
    color: Colors.black54,
    fontWeight: FontWeightHelper.regular,
    fontFamily: AppConstants.appFontFamily,
  );
  static TextStyle font12BlackRegular = TextStyle(
    fontSize: 12.sp,
    color: Colors.black,
    fontWeight: FontWeightHelper.regular,
    fontFamily: AppConstants.appFontFamily,
  );
  static TextStyle font12BlackSemiBold = TextStyle(
    fontSize: 12.sp,
    color: Colors.black,
    decoration: TextDecoration.underline,
    fontWeight: FontWeightHelper.semiBold,
    fontFamily: AppConstants.appFontFamily,
  );
}
