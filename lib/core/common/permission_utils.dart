import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:app/features/shared/modal_bottom_sheet.dart';

class PermissionUtils {
  static Future<void> requestPermission(
    List<Permission> permissions,
    BuildContext context, {
    Function? permissionGrant,
    Function? permissionDenied,
    Function? permissionNotAskAgain,
    bool isOpenSettings = false,
    bool isShowMessage = false,
  }) async {
    permissions.request().then((value) {
      var allPermissionGranted = true;
      value.forEach((key, value) {
        allPermissionGranted =
            allPermissionGranted && (value == PermissionStatus.granted);
      });

      if (allPermissionGranted) {
        if (permissionGrant != null) {
          permissionGrant();
        }
      } else {
        if (permissionDenied != null) {
          permissionDenied();
        }
        if (isOpenSettings) {
          ModalBottomSheets.showOkCancelAlertDialog(
            context: context,
            message:
                'Please grant the required permission from settings to access this feature.',
            cancelButtonTitle: 'Cancel',
            okButtonTitle: 'Yes',
            cancelButtonAction: () {},
            okButtonAction: () {
              openAppSettings();
            },
          );
        } else if (isShowMessage) {
          // DialogUtils.showAlertDialog(
          //     context, Localization.of(context).alertPermissionNotRestricted);
        }
      }
    });
  }
}
