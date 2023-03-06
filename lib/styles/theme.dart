import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lancemeup/styles/fontstyle.dart';
import 'package:lancemeup/utils/colors.dart';

ThemeData themeData = ThemeData(
    brightness: Brightness.light,
    primaryColor: primaryColor,
    appBarTheme: appBarTheme,
    checkboxTheme: checkboxThemeData,
    tabBarTheme: tabBarTheme,
    iconTheme: iconThemeData,
    progressIndicatorTheme: progressIndicatorThemeData,
    bottomNavigationBarTheme: bottomNavigationThemeData,
    badgeTheme: badgeThemeData);

BadgeThemeData badgeThemeData = BadgeThemeData(
  textColor: Colors.white,
  backgroundColor: primaryColor,
);

BottomNavigationBarThemeData bottomNavigationThemeData =
    BottomNavigationBarThemeData(
        showUnselectedLabels: true,
        selectedIconTheme: const IconThemeData(fill: 1),
        unselectedItemColor: const Color(0XFF556987),
        selectedItemColor: primaryColor,
        selectedLabelStyle: GoogleFonts.urbanist(
            color: primaryColor, fontSize: 12, fontWeight: FontWeight.w500),
        unselectedLabelStyle: GoogleFonts.urbanist(
            color: Colors.grey.shade500,
            fontSize: 12,
            fontWeight: FontWeight.w500));

ProgressIndicatorThemeData progressIndicatorThemeData =
    ProgressIndicatorThemeData(
  linearTrackColor: grey200,
  color: primaryColor,
  linearMinHeight: 7,
);

IconThemeData iconThemeData = IconThemeData(
  color: primaryColor,
);

TabBarTheme tabBarTheme = TabBarTheme(
  labelColor: primaryColor,
  labelStyle: bodytextStyle.copyWith(fontSize: 12, color: primaryColor),
  unselectedLabelColor: bodytextStyle.color,
  unselectedLabelStyle: bodytextStyle.copyWith(
    fontSize: 12,
  ),
);

CheckboxThemeData checkboxThemeData = CheckboxThemeData(
  checkColor: const MaterialStatePropertyAll(Colors.white),
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
  fillColor: MaterialStateProperty.resolveWith((states) {
    if (states.contains(MaterialState.selected)) {
      return primaryColor;
    }
    return null;
  }),
);

AppBarTheme appBarTheme = AppBarTheme(
  systemOverlayStyle: const SystemUiOverlayStyle(statusBarColor: Colors.white),
  titleTextStyle: headingStyle.copyWith(fontSize: 14),
  foregroundColor: headingStyle.color,
  backgroundColor: Colors.white,
);
