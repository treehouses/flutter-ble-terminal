import 'package:flutter/material.dart';

class BinaryAlertDialog {
  static BinaryAlertDialog _instance = new BinaryAlertDialog();
  factory BinaryAlertDialog() => _instance;

  static void show(BuildContext context, String title, String content, {String leftButtonText = "No", String rightButtonText = "Yes"}) {
    Widget noButton = TextButton(
        child: Text(leftButtonText),
        onPressed:  () => Navigator.of(context).pop()
    );
    Widget yesButton = TextButton(
        child: Text(rightButtonText),
        onPressed:  () => Navigator.of(context).pop()
    );

    AlertDialog alert = AlertDialog(
      title: Text(title),
      content: Text(content),
      actions: [
        noButton,
        yesButton,
      ],
    );

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}