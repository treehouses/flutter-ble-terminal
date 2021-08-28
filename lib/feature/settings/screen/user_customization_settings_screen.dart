import 'package:flutter/material.dart';
import 'package:treehousesble/feature/settings/screen/text_size_settings_screen.dart';
import 'package:treehousesble/common/widget/binary_alert_dialog.dart';

class UserCustomizationSettingsScreen extends StatefulWidget {
  @override
  State<UserCustomizationSettingsScreen> createState() => _UserCustomizationSettingsScreenState();
}

class _UserCustomizationSettingsScreenState extends State<UserCustomizationSettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Card(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                    child: Column(
                        children: <Widget> [
                          ListTile(
                              title: Text("Clear All Settings"),
                              leading: Icon(Icons.list_alt),
                              onTap: () => BinaryAlertDialog.show(context, "Clear All Settings", "Are you sure you want to clear all settings?")
                          ),
                          ListTile(
                              title: Text("Clear Commands List"),
                              subtitle: Text("Clear the whole commands list in terminal"),
                              leading: Icon(Icons.list_alt),
                              onTap: () => BinaryAlertDialog.show(context, "Clear Commands List", "Are you sure you want to clear the commands list?")
                          ),
                          ListTile(
                              title: Text("Reset Commands List"),
                              subtitle: Text("Reset commands list to default in terminal"),
                              leading: Icon(Icons.cached),
                              onTap: () => BinaryAlertDialog.show(context, "Reset Commands List", "Are you sure you want to reset the commands list to default?")
                          ),
                          ListTile(
                              title: Text("Clear Network Profiles"),
                              leading: Icon(Icons.network_cell),
                              onTap: () => BinaryAlertDialog.show(context, "Clear Network Profiles", "Are you sure you want to clear all network profiles?")
                          ),
                          ListTile(
                              title: Text("Clear SSH Hosts"),
                              leading: Icon(Icons.computer),
                              onTap: () => BinaryAlertDialog.show(context, "Clear SSH Hosts", "Are you sure you want to clear all SSH hosts?")
                          ),
                          ListTile(
                              title: Text("Clear SSH Keys"),
                              leading: Icon(Icons.vpn_key),
                              onTap: () => BinaryAlertDialog.show(context, "Clear SSH Keys", "Are you sure you want to clear all SSH Keys?")
                          ),
                        ]
                    )
                ),
                Card(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                    child: Column(
                        children: <Widget> [
                          ListTile(
                              title: Text("Text Size"),
                              trailing: Icon(Icons.keyboard_arrow_right),
                              onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => TextSizeSettingsScreen()))
                          )
                        ]
                    )
                )
              ]
            )
        )
    );
  }
}