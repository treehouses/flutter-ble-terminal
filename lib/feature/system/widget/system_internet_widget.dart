import 'package:flutter/material.dart';
import 'package:treehousesble/feature/system/widget/internet_blocking_widget.dart';
import 'package:treehousesble/feature/system/widget/share_internet_widget.dart';

class SystemInternetWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ShareInternetWidget(),
          InternetBlockingWidget()
        ],
      )
    );
  }
}