import 'package:flutter/material.dart';
import 'package:treehousesble/ui/network/widget/network_card.dart';
import 'package:treehousesble/ui/widgets/binary_alert_dialog.dart';

class NetWorkScreen extends StatefulWidget {
  @override
  State<NetWorkScreen> createState() => _NetWorkScreenState();
}

class _NetWorkScreenState extends State<NetWorkScreen> {
  static int networkMode = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget> [
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                NetWorkCard(1, Colors.redAccent, Icons.wifi, "Wifi"),
                NetWorkCard(2, Colors.lightBlueAccent, Icons.speaker_phone, "Hotspot")
              ],
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                NetWorkCard(3, Colors.pinkAccent, Icons.share, "Bridge"),
                NetWorkCard(4, Colors.amber, Icons.cable, "Ethernet"),
              ],
            ),
            SizedBox(height: 30),
            Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                child: Column(
                    children: <Widget> [
                      ExpansionTile(
                          title: Text("Commands"),
                          children: [
                            ListTile(
                                title: Text("Update Network Mode")
                            ),
                            ListTile(
                                title: Text("Reboot Raspberry Pi"),
                                onTap: () => BinaryAlertDialog.show(context, "Reboot Device", "Are you sure you want to reboot your device?")
                            ),
                            ListTile(
                                title: Text("Reset Network"),
                                onTap: () => BinaryAlertDialog.show(context, "Reset Network", "Are you sure you want to reset the network to default?")
                            ),
                            ListTile(
                                title: Text("Speed Test")
                            ),
                            ListTile(
                                title: Text("Reverse Lookup")
                            ),
                            ListTile(
                                title: Text("Find Devices on Your Network")
                            ),
                          ],
                      )
                    ]
                )
            ),
          ]
        )
      )
    );
  }
}