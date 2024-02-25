import 'package:applocker/core/common/image_constants.dart';
import 'package:applocker/core/dimens/dimens.dart';
import 'package:applocker/theme/colors.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.primaryExtraDarkColor,
      resizeToAvoidBottomInset: true,
      body: SafeArea(
          child: Column(
        children: [
          Image.asset(ImageConstants.fingerPrintIcons),
          SizedBox(height: Dimens.marginSmall,),
          
        ],
      )),
    );
  }
}
