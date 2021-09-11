import 'package:flutter/material.dart';

void setErrorBuilder(BuildContext context) {
  ErrorWidget.builder = (FlutterErrorDetails errorDetails) {
    return Container(
      child: Center(
        child: Text("An error occurred"),
      ),
    );
  };
}
