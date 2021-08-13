
import 'package:flutter/material.dart';
import 'package:flutter_blue/flutter_blue.dart';
import 'package:treehousesble/ui/home/screen/search_screen.dart';
import 'package:treehousesble/ui/home/screen/device_screen.dart';
import 'package:treehousesble/ui/home/widget/scan_result_tile.dart';
import 'package:treehousesble/ui/home/widget/fab_bottom_app_bar.dart';

class FindDevicesScreen extends StatefulWidget {
  @override
  State<FindDevicesScreen> createState() => _FindDevicesScreenState();
}

class _FindDevicesScreenState extends State<FindDevicesScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: SearchPage() ,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: StreamBuilder<bool>(
        stream: FlutterBlue.instance.isScanning,
        initialData: false,
        builder: (c, snapshot) {
          if (snapshot.data!) {
            return FloatingActionButton(
              child: Icon(Icons.stop),
              onPressed: () => FlutterBlue.instance.stopScan(),
              backgroundColor: Colors.red,
            );
          } else {
            return FloatingActionButton(
                child: Icon(Icons.search),
                onPressed: () => FlutterBlue.instance
                    .startScan(timeout: Duration(seconds: 10)));
          }
        },
      ),
      bottomNavigationBar: FABBottomAppBar(
        items: [
          FABBottomAppBarItem(iconData: Icons.home, text: 'Home'),
          FABBottomAppBarItem(iconData: Icons.branding_watermark_outlined, text: 'Terminal'),
          FABBottomAppBarItem(iconData: Icons.network_wifi, text: 'Network'),
          FABBottomAppBarItem(iconData: Icons.settings, text: 'Settings'),
        ],
        notchedShape: CircularNotchedRectangle(),
        color: Colors.black54,
        selectedColor: Colors.white,
        centerItemText: '',
        backgroundColor: Colors.blue,
        onTabSelected: (int value) {  },
    ),
    );
  }


}
