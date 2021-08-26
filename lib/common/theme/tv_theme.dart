import 'package:flutter/material.dart';
import 'package:treehousesble/app/theme.dart';

class TvTheme extends StatelessWidget {
  const TvTheme({Key? key, required this.child}) : super(key: key);
  final Widget child;
  static ThemeData of(BuildContext context) {
    return CustomTheme.darkTheme();
  }

  @override
  Widget build(BuildContext context) {
    return child;
  }
}
