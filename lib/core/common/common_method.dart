import 'package:sizer/sizer.dart';

class CommonMethods {
  static double returnHeight(
      {required double mobileHeight, required double tabHeight}) {
    if (SizerUtil.deviceType == DeviceType.mobile) {
      return mobileHeight;
    } else {
      return tabHeight;
    }
  }
}
