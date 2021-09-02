import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:treehousesble/feature/settings/screen/user_customization_settings_screen.dart';
import 'package:treehousesble/feature/settings/screen/general_settings_screen.dart';

class SettingsScreen extends StatefulWidget {
  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool sharingData = false;
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
                              title: Text("General"),
                              leading: Icon(Icons.settings),
                              trailing: Icon(Icons.keyboard_arrow_right),
                              onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => GeneralSettingsScreen()))
                          )
                        ]
                    )
                ),
                Card(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                    child: Column(
                        children: <Widget> [
                          SwitchListTile(
                            title: Text("Share Data"),
                            secondary: Icon(Icons.network_wifi),
                            subtitle: Text("Please enable to share data with the Treehouses Remote Team. This will help us to improve our services to give you the best possible experience!"),
                            value: sharingData,
                            onChanged: (val) {
                              setState(() {
                                sharingData = val;
                              });
                            },
                          )
                        ]
                    )
                ),
                Card(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                    child: Column(
                        children: <Widget> [
                          ListTile(
                              title: Text("User Customization"),
                              leading: Icon(Icons.format_paint),
                              trailing: Icon(Icons.keyboard_arrow_right),
                              onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => UserCustomizationSettingsScreen()))
                          )
                        ]
                    )
                ),
                Card(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                    child: Column(
                        children: <Widget> [
                          ListTile(
                              title: Text("Contributors"),
                              leading: Icon(Icons.people),
                              onTap: () => launch("https://github.com/treehouses/flutter-ble-terminal/graphs/contributors")
                          ),
                          ListTile(
                              title: Text("About"),
                              leading: Icon(Icons.info),
                              onTap: () => launch("https://treehouses.io/#!index.md")
                          ),
                          ListTile(
                              title: Text("Report an Issue"),
                              leading: Icon(Icons.report_problem),
                              onTap: () => launch("https://github.com/treehouses/flutter-ble-terminal/issues")
                          )
                        ]
                    )
                )
              ],
            )
        )
    );
  }
}