import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_blue/flutter_blue.dart';
import 'package:treehousesble/feature/dashboard/widget/scan_result_tile.dart';

import 'device_screen.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  var piAddress = <String>{
    "B8:27:EB",
    "DC:A6:32",
    "E4:5F:01",
    "B8-27-EB",
    "DC-A6-32",
    "E4-5F-01",
    "B827.EB",
    "DCA6.32",
    "E45F.01",
    "b8:27:eb",
    "dc:a6:32",
    "e4:5f:01",
    "b8-27-eb",
    "dc-a6-32",
    "e4-5f-01",
    "b827.eb",
    "dca6.32",
    "e45f.01"
  };

  var filter = true;
  var showProgress = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          showProgress ? Center(child: CircularProgressIndicator(),):Container(),
          Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Filter Pi",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Switch(
                  onChanged: (bool value) {
                    setState(() {
                      filter = value;
                    });
                  },
                  value: filter,
                  activeColor: Colors.blue[500],
                )
              ],
            ),
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          ),
          RefreshIndicator(
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
                                  initialData:
                                      BluetoothDeviceState.disconnected,
                                  builder: (c, snapshot) {
                                    if (snapshot.data ==
                                        BluetoothDeviceState.connected) {
                                      return RaisedButton(
                                        child: Text('OPEN'),
                                        onPressed: () => Navigator.of(context)
                                            .push(MaterialPageRoute(
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
                    builder: (c, snapshot) =>
                        Column(children: getDeviceList(context, snapshot)),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  List<Widget> getDeviceList(
      BuildContext context, AsyncSnapshot<List<ScanResult>> snapshot) {
    return filter
        ? getDeviceListFilter(context, snapshot)
        : getDeviceListUnfiltered(context, snapshot);
  }

  List<Widget> getDeviceListUnfiltered(
      BuildContext context, AsyncSnapshot<List<ScanResult>> snapshot) {
    List<Widget> list = [];
    snapshot.data!.forEach((ScanResult r) {
      list.add(ScanResultTile(
          result: r,
          onTap: () {
            setState(() {
              showProgress = true;
            });
            r.device.connect().then((value) {
              print("CONNECTIION VALUE " );
              setState(() {
                showProgress = false;
              });
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return DeviceScreen(device: r.device);
              }));
            }).catchError((err){
              setState(() {
                showProgress = false;
              });
            });
          }));
    });
    return list;
  }

  List<Widget> getDeviceListFilter(
      BuildContext context, AsyncSnapshot<List<ScanResult>> snapshot) {
    List<Widget> list = [];
    snapshot.data!.forEach((ScanResult r) {
      piAddress.forEach((element) {
        if (r.device.id.toString().startsWith(element)) {
          list.add(ScanResultTile(
            result: r,
            onTap: () {
              setState(() {
                showProgress = true;
              });
              r.device.connect().then((value) {
                setState(() {
                  showProgress = false;
                });
                Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                  return DeviceScreen(device: r.device);
                }));
              }).catchError((err){
                setState(() {
                  showProgress = false;
                });
              });
            },
          ));
        }
      });
    });
    return list;
  }
}
