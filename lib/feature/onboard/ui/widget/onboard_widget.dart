import 'package:flutter/material.dart';
import 'package:treehousesble/app/theme.dart';
import 'package:treehousesble/common/route/routes.dart';
import 'package:treehousesble/common/widget/page_wrapper.dart';

class OnboardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageWrapper(
      body: Center(
        child:  InkWell(
          splashColor: Colors.transparent,
          customBorder: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(45)),
          onTap: () {
            Navigator.pushReplacementNamed(context, Routes.dashboard);
          },
          child: Container(
            height: 65,
            width: 65,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: CustomTheme.primaryColor,
            ),
            child: Icon(
              Icons.arrow_forward,
              color: Colors.white,
              size: 45,
            ),
          ),
        ),
      ),
    );
  }
}
