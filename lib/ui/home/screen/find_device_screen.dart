
import 'package:flutter/material.dart';
import 'package:flutter_blue/flutter_blue.dart';
import 'package:treehousesble/ui/home/screen/device_screen.dart';
import 'package:treehousesble/ui/home/screen/settings_screen.dart';
import 'package:treehousesble/ui/home/widget/scan_result_tile.dart';
import 'package:treehousesble/ui/home/widget/fab_bottom_app_bar.dart';

class FindDevicesScreen extends StatefulWidget {
  @override
  State<FindDevicesScreen> createState() => _FindDevicesScreenState();
}

class _FindDevicesScreenState extends State<FindDevicesScreen> {
  int pageIndex = 0;
  var piAddress = <String>{"B8:27:EB", "DC:A6:32", "E4:5F:01",
                           "B8-27-EB", "DC-A6-32", "E4-5F-01",
                           "B827.EB", "DCA6.32", "E45F.01",
                           "b8:27:eb", "dc:a6:32", "e4:5f:01",
                           "b8-27-eb", "dc-a6-32", "e4-5f-01",
                           "b827.eb", "dca6.32", "e45f.01"};

  var filter = true;

  Widget pages(int index) {
    switch(index) {
      case 0:
        return RefreshIndicator(
          onRefresh: () =>
              FlutterBlue.instance.startScan(timeout: Duration(seconds: 4)),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                StreamBuilder<List<BluetoothDevice>>(
                  stream: Stream.periodic(Duration(seconds: 2))
                      .asyncMap((_) => FlutterBlue.instance.connectedDevices),
                  initialData: [],
                  builder: (c, snapshot) => Column(
                    children: snapshot.data!
                        .map((d) => ListTile(
                      title: Text(d.name),
                      subtitle: Text(d.id.toString()),
                      trailing: StreamBuilder<BluetoothDeviceState>(
                        stream: d.state,
                        initialData: BluetoothDeviceState.disconnected,
                        builder: (c, snapshot) {
                          if (snapshot.data ==
                              BluetoothDeviceState.connected) {
                            return RaisedButton(
                              child: Text('OPEN'),
                              onPressed: () => Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          DeviceScreen(device: d))),
                            );
                          }
                          return Text(snapshot.data.toString());
                        },
                      ),
                    ))
                        .toList(),
                  ),
                ),
                StreamBuilder<List<ScanResult>>(
                  stream: FlutterBlue.instance.scanResults,
                  initialData: [],
                  builder: (c, snapshot) => Column(
                      children: getDeviceList(context,snapshot)
                  ),
                ),
              ],
            ),
          ),
        );
      case 1:
        return Container();
      case 2:
        return Container();
      case 3:
        return SettingsScreen();
      default:
        return Container();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Find Devices'),
        actions: [Switch(
          onChanged: (bool value){
            setState(() {
              filter = value;
            });
          },
          value: filter,
          activeColor: Colors.blue[200],
        )],
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
                    .startScan(timeout: Duration(seconds: 4)));
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
        onTabSelected: (int value) {
          setState(() {
            pageIndex = value;
          });
        },
    ),
    );
  }

  List<Widget> getDeviceListFilter(BuildContext context, AsyncSnapshot<List<ScanResult>> snapshot) {
    List<Widget> list = [];
    snapshot.data!.forEach((ScanResult r) {
      piAddress.forEach((element) {
        if(r.device.id.toString().startsWith(element)){
          list.add(  ScanResultTile(
            result: r,
            onTap: () => Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) {
              r.device.connect();
              return DeviceScreen(device: r.device);
            })),
          ));
        }
        });
    });
    return list;
  }

  List<Widget> getDeviceList(BuildContext context, AsyncSnapshot<List<ScanResult>> snapshot) {
    if (filter) return getDeviceListFilter(context, snapshot);
        else return getDeviceListUnfiltered(context, snapshot);
  }

  List<Widget> getDeviceListUnfiltered(BuildContext context, AsyncSnapshot<List<ScanResult>> snapshot) {
    List<Widget> list = [];
    snapshot.data!.forEach((ScanResult r) {
      list.add(  ScanResultTile(
        result: r,
        onTap: () => Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) {
          r.device.connect();
          return DeviceScreen(device: r.device);
        })),
      ));
    });
    return list;
  }
}
