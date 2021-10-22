import 'package:flutter/material.dart';
import 'package:treehousesble/app/theme.dart';
import 'package:treehousesble/common/route/routes.dart';
import 'package:treehousesble/common/shared_pref/shared_pref.dart';
import 'package:treehousesble/common/widget/page_wrapper.dart';
import 'package:url_launcher/url_launcher.dart';

class OnboardDownloadWidget extends StatefulWidget {

  @override
  _OnboardDownloadWidgetState createState() => _OnboardDownloadWidgetState();
}

class _OnboardDownloadWidgetState extends State<OnboardDownloadWidget> {
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
        color: Colors.black54,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                  'assets/icons/ic_download_icon.png',
                  height: 100,
                  width: 200,
              ),
              Container(
                width: 300,
                child: Text(
                  "Download Treehouses Image",
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
                  "Treehouses Remote requires a Raspberry Pi running a Treehouses Image in order to function properly.",
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
                  launch('https://treehouses.io/#!pages/download.md');
                },
                child: Text('Download'),
              )
            ],
          ),
        ),
      ),
    );
  }
}