import 'package:applocker/theme/colors.dart';
import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Raleway',
    primaryColor: CustomColors.primaryColor,
    secondaryHeaderColor: CustomColors.colorGreen,
    disabledColor: CustomColors.colorGrey,
    brightness: Brightness.light,
    hintColor: CustomColors.colorGrey,
    cardColor: CustomColors.colorLightWhite,
    colorScheme: ColorScheme.light(
        primary: const Color(0xFFE94057),
        secondary: const Color(0xFF072F5F),
        background: CustomColors.colorWhite,
        error: Colors.red));
