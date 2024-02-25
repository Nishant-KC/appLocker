import 'package:app/core/common/common_method.dart';
import 'package:app/theme/colors.dart';
import 'package:app/core/dimens/dimens.dart';
import 'package:app/theme/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';

class PhoneVerificationScreen extends StatefulWidget {
  const PhoneVerificationScreen({super.key});

  @override
  State<PhoneVerificationScreen> createState() =>
      _PhoneVerificationScreenState();
}

class _PhoneVerificationScreenState extends State<PhoneVerificationScreen> {
  final TextEditingController _phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.colorWhite,
      body: Stack(
        children: [
          SizedBox(
            height: 100.h,
            width: 100.w,
            child: SvgPicture.asset(
              "assets/icons/svg/login.svg",
              fit: BoxFit.fill,
            ),
          ),
          GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: Dimens.marginExtraLarge + 20,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset("assets/images/login.png"),
                        Text(
                          'Hello there!',
                          maxLines: 1,
                          textAlign: TextAlign.start,
                          style: smallTextStyle.copyWith(
                              fontSize: Dimens.textSizeLarge),
                        ),
                        Text(
                          'Welcome',
                          maxLines: 1,
                          textAlign: TextAlign.start,
                          style: largeTextStyle.copyWith(
                              color: CustomColors.primaryColor,
                              fontWeight: FontWeight.bold,
                              fontSize: Dimens.textSizeExtraLarge + 10),
                        ),
                        Text(
                          'Sign in to continue with our app',
                          maxLines: 1,
                          textAlign: TextAlign.start,
                          style: smallTextStyle.copyWith(
                              fontSize: Dimens.textSizeMedium),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: Dimens.marginExtraLarge,
                    ),
                    SizedBox(
                      width: 100.w,
                      height: CommonMethods.returnHeight(
                          mobileHeight: 7.h, tabHeight: 8.h),
                      child: TextFormField(
                        controller: _phoneController,
                        style: regularTextStyle.copyWith(
                            fontWeight: FontWeight.w600),
                        inputFormatters: [
                          FilteringTextInputFormatter.deny(RegExp("[^0-9]")),
                          LengthLimitingTextInputFormatter(10),
                        ],
                        keyboardType: TextInputType.phone,
                        cursorColor: CustomColors.colorDarkGray,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.all(
                                  Radius.circular(Dimens.radiusLarge))),
                          filled: true,
                          fillColor: CustomColors.colorCard,
                          prefixIcon: Container(
                            margin: EdgeInsets.only(right: 1.5.w),
                            decoration: BoxDecoration(
                              color: CustomColors.colorCard,
                              borderRadius:
                                  BorderRadius.circular(Dimens.radiusLarge),
                            ),
                            width: 16.w,
                            height: CommonMethods.returnHeight(
                                mobileHeight: 7.h, tabHeight: 8.h),
                            child: Center(
                              child: Text(
                                '+91',
                                style: smallBoldTextStyle.copyWith(
                                  color: CustomColors.colorDarkGray,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: Dimens.marginSmall,
                    ),
                    SizedBox(
                      width: 100.w,
                      height: 7.h,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: CustomColors.primaryColor,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(Dimens.radiusLarge))),
                        child: Text(
                          'Continue',
                          style: regularTextStyle.copyWith(
                              color: CustomColors.colorWhite,
                              fontWeight: FontWeight.w600,
                              fontSize: Dimens.textSizeSmallBold),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
