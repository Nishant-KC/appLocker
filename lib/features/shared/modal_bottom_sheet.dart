
import 'package:flutter/material.dart';

class ModalBottomSheets {

  static void showOkCancelAlertDialog({
    required BuildContext context,
    required String message,
    required String okButtonTitle,
    required String cancelButtonTitle,
    Function? cancelButtonAction,
    required Function okButtonAction,
    bool isCancelEnable = true,
  }) {
    showDialog(
      barrierDismissible: isCancelEnable,
      context: context,
      builder: (context) {
        return WillPopScope(
            onWillPop: () async => false,
            child: AlertDialog(
              title: const Text("Permissions"),
              content: Text(message),
              actions: [
                TextButton(
                  onPressed: cancelButtonAction == null
                      ? () {
                          Navigator.of(context).pop();
                        }
                      : () {
                          Navigator.of(context).pop();
                          cancelButtonAction();
                        },
                  child: Text(cancelButtonTitle),
                ),
                TextButton(
                  child: Text(okButtonTitle),
                  onPressed: () {
                    Navigator.of(context).pop();
                    okButtonAction();
                  },
                )
              ],
            ));
      },
    );
  }
}