import 'package:flutter/material.dart';
import 'package:treehousesble/app/theme.dart';
import 'package:treehousesble/common/route/routes.dart';
import 'package:treehousesble/common/shared_pref/shared_pref.dart';
import 'package:treehousesble/common/widget/page_wrapper.dart';

class OnboardWidget extends StatefulWidget {
  @override
  _OnboardWidgetState createState() => _OnboardWidgetState();
}

class _OnboardWidgetState extends State<OnboardWidget> {
  @override
  void initState() {
    super.initState();
    setOnOpenFirstTime();
  }

  setOnOpenFirstTime() async {
    await SharedPref.setFirstTimeAppOpen(false);
  }
  @override
  Widget build(BuildContext context) {
    return PageWrapper(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("GET STARTED"),
            Center(
              child: InkWell(
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
            )
          ],
        ),
      ),
    );
  }
}
