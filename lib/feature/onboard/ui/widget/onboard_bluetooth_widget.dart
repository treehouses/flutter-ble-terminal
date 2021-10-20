import 'package:flutter/material.dart';
import 'package:treehousesble/app/theme.dart';
import 'package:treehousesble/common/route/routes.dart';
import 'package:treehousesble/common/shared_pref/shared_pref.dart';
import 'package:treehousesble/common/widget/page_wrapper.dart';

class OnboardBluetoothWidget extends StatefulWidget {

  @override
  _OnboardBluetoothWidgetState createState() => _OnboardBluetoothWidgetState();
}

class _OnboardBluetoothWidgetState extends State<OnboardBluetoothWidget> {
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
            Image.asset('assets/icons/ic_bluetooth_icon.png'),
            Text(
              "Connect to RPI via Bluetooth",
              textAlign: TextAlign.center,
            ),
            Text(
              "Use Bluetooth to connect to RPI and start performing RPI functions",
              textAlign: TextAlign.center,
            ),
            Center(
              child: InkWell(
                splashColor: Colors.transparent,
                customBorder: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(45)),
                onTap: () {
                  Navigator.pushReplacementNamed(context, Routes.search);
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