import 'package:flutter/material.dart';
import 'package:treehousesble/ui/network/widget/network_card.dart';
import 'package:treehousesble/ui/widgets/binary_alert_dialog.dart';

class NetWorkScreen extends StatefulWidget {
  @override
  State<NetWorkScreen> createState() => _NetWorkScreenState();
}

class _NetWorkScreenState extends State<NetWorkScreen> {
  static int networkMode = 0;
  void onTap (cardNum) => setState(() => networkMode = cardNum);
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
                NetWorkCard(1, Color(0xFFffdd00), Color(0xFFfbb034), Icons.wifi, "Wifi", onTap, networkMode),
                NetWorkCard(2, Color(0xFF2193b0), Color(0xFF6dd5ed),Icons.speaker_phone, "Hotspot", onTap, networkMode)
              ],
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                NetWorkCard(3, Color(0xFFEB3349), Color(0xFFF45C43), Icons.share, "Bridge", onTap, networkMode),
                NetWorkCard(4, Color(0xFF02aab0), Color(0xFF00cdac), Icons.cable, "Ethernet", onTap, networkMode),
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