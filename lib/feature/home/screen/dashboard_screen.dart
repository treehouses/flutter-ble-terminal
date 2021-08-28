
import 'package:flutter/material.dart';
import 'package:flutter_blue/flutter_blue.dart';
import 'package:treehousesble/feature/home/screen/search_screen.dart';
import 'package:treehousesble/feature/home/widget/fab_bottom_app_bar.dart';
import 'package:treehousesble/feature/network/screen/network_screen.dart';
import 'package:treehousesble/feature/settings/screen/settings_screen.dart';

class FindDevicesScreen extends StatefulWidget {
  @override
  State<FindDevicesScreen> createState() => _FindDevicesScreenState();
}

class _FindDevicesScreenState extends State<FindDevicesScreen> {
  int pageIndex = 0;

  Widget pages(int index) {
    switch(index) {
      case 0:
        return SearchPage();
      case 1:
        return Container();
      case 2:
        return NetWorkScreen();
      case 3:
        return SettingsScreen();
      default:
        return Container();
    }
  }

  String pageName(int index) {
    switch(index) {
      case 0:
        return "Home";
      case 1:
        return "Terminal";
      case 2:
        return "Network";
      case 3:
        return "Settings";
      default:
        return "Default";
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(pageName(pageIndex)),
      ),
      body: pages(pageIndex),
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
        backgroundColor: Theme.of(context).primaryColor,
        onTabSelected: (int value) {
          setState(() {
            pageIndex = value;
          });
        }
    ),
    );
  }


}
