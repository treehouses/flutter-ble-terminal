import 'package:flutter/material.dart';
import 'package:treehousesble/common/constants/assets.dart';
import 'package:treehousesble/common/constants/strings.dart';
import 'package:treehousesble/common/widget/page_wrapper.dart';

class SplashWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageWrapper(
      body: Container(
        color: Theme.of(context).backgroundColor,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                Assets.launcherIcon,
                height: 120,
              ),
             Padding(padding: EdgeInsets.all(16), child:  Text(Strings.APP_TITLE, ),)
            ],
          ),
        ),
      ),
    );
  }
}
