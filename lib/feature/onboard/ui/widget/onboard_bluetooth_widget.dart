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
      body: Container(
        color: Colors.indigo,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                  'assets/icons/ic_bluetooth_icon.png',
                  height: 100,
                  width: 200,
              ),
              Container(
                width: 300,
                child: Text(
                  "Connect to RPI via Bluetooth",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    color: Colors.white
                  )
                ),
              ),
              Container(
                width: 350,
                child: Text(
                  "Use Bluetooth to connect to RPI and start performing RPI functions",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white
                  )
                ),
              ),
              ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                    )
                  ),
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.grey),
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                ),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, Routes.search);
                },
                child: Text('GetStarted'),
              )
            ],
          ),
        ),
      ),
    );
  }
}