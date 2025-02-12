import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reset_app/core/constants/app_constants.dart';
import 'package:reset_app/core/routing/app_router.dart';
import 'package:reset_app/core/routing/routes.dart';

class ResetApp extends StatelessWidget {
  const ResetApp({super.key, required this.appRouter});
  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: GestureDetector(
        onTap: () {
          FocusManager.instance.primaryFocus?.unfocus();
        },
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: Routes.onboardingScreen,
          onGenerateRoute: appRouter.generteRouter,
          theme: ThemeData(
            fontFamily: AppConstants.appFontFamily,
            scaffoldBackgroundColor: Colors.white,
            appBarTheme: const AppBarTheme(
              elevation: 0.0,
              systemOverlayStyle: SystemUiOverlayStyle(
                statusBarColor: Colors.transparent,
                statusBarBrightness: Brightness.light,
                statusBarIconBrightness: Brightness.dark,
              ),
            ),
          ),
          builder: (context, child) {
            return Directionality(
              textDirection: TextDirection.rtl,
              child: child!,
            );
          },
        ),
      ),
    );
  }
}
