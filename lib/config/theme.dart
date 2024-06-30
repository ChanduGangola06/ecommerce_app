import 'package:ecommerce_app/config/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

AppColors colors(context) => Theme.of(context).extension<AppColors>()!;
ThemeData getAppTheme(
    {required BuildContext context, required bool isDarkTheme}) {
  AppColor appColor = AppColorManager.getColorClass(serviceName: 'serviceName');
  return ThemeData(
    useMaterial3: true,
    extensions: <ThemeExtension<AppColors>>[
      AppColors(
        primaryColor: appColor.primaryColor,
        accentColor: appColor.accentColor,
        secondaryColor: appColor.secondaryColor,
        buttonColor: appColor.buttonColor,
        bodyTextColor: isDarkTheme ? appColor.light : appColor.dark,
        light: appColor.light,
        dark: appColor.dark,
        bodyTextSmallColor:
            isDarkTheme ? appColor.accentColor : appColor.bodyTextSmallColor,
        headingColor: isDarkTheme ? appColor.light : appColor.dark,
        hintTextColor: appColor.hintTextColor,
        errorColor: appColor.errorColor,
      ),
    ],
    fontFamily: 'Mulish',
    unselectedWidgetColor: appColor.accentColor,
    scaffoldBackgroundColor: isDarkTheme ? appColor.dark : appColor.light,
    appBarTheme: AppBarTheme(
      // toolbarHeight: 80.h,
      backgroundColor: isDarkTheme ? appColor.dark : appColor.light,
      titleTextStyle: TextStyle(
        color: isDarkTheme ? appColor.light : appColor.dark,
        fontSize: 18.sp,
        fontWeight: FontWeight.w700,
      ),
      centerTitle: false,
      elevation: 0,
      iconTheme: IconThemeData(
        color: isDarkTheme ? appColor.light : appColor.dark,
      ),
    ),
    colorScheme: ColorScheme(
      brightness: isDarkTheme ? Brightness.dark : Brightness.light,
      primary: appColor.primaryColor,
      onPrimary: appColor.accentColor,
      secondary: appColor.secondaryColor,
      onSecondary: appColor.secondaryColor,
      error: appColor.errorColor,
      onError: appColor.errorColor,
      surface: isDarkTheme ? appColor.dark : appColor.light,
      onSurface: isDarkTheme ? appColor.light : appColor.dark,
      background: Colors.transparent,
      onBackground: Colors.transparent,
    ),
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor:
          isDarkTheme ? EcommerceAppColor.black : EcommerceAppColor.white,
      modalBackgroundColor:
          isDarkTheme ? EcommerceAppColor.black : EcommerceAppColor.white,
      surfaceTintColor:
          isDarkTheme ? EcommerceAppColor.black : EcommerceAppColor.white,
    ),
  );
}