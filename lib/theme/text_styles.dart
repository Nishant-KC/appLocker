import 'package:app/core/dimens/dimens.dart';
import 'package:app/theme/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:pinput/pinput.dart';

TextStyle regularTextStyle = TextStyle(
  color: CustomColors.colorBlack,
  fontSize: Dimens.textSizeDefault,
  overflow: TextOverflow.ellipsis,
);
TextStyle largeTextStyle = TextStyle(
  color: CustomColors.colorBlack,
  fontSize: Dimens.textSizeLarge,
  overflow: TextOverflow.ellipsis,
);

TextStyle smallBoldTextStyle = TextStyle(
  color: CustomColors.colorBlack,
  fontSize: Dimens.textSizeSmall,
  fontWeight: FontWeight.w600,
  overflow: TextOverflow.ellipsis,
);

TextStyle smallTextStyle = TextStyle(
  color: CustomColors.colorBlack,
  fontSize: Dimens.textSizeSmall,
  overflow: TextOverflow.ellipsis,
);

TextStyle extraSmallTextStyle = TextStyle(
  color: CustomColors.colorBlack,
  fontSize: Dimens.textSizeExtraSmall,
  overflow: TextOverflow.ellipsis,
);

TextStyle hintTextStyle = TextStyle(
  color: CustomColors.colorGrey,
  fontSize: Dimens.textSizeSmall,
  fontWeight: FontWeight.w500,
  overflow: TextOverflow.ellipsis,
);

final defaultPinTheme = PinTheme(
  width: 56,
  height: 56,
  textStyle: TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.bold,
    color: CustomColors.primaryColor.withOpacity(0.6),
  ),
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(15),
    border: Border.all(color: CustomColors.primaryColor),
  ),
);
