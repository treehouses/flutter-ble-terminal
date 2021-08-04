import 'package:flutter/material.dart';
import 'package:treehousesble/ui/home/screen/text_size_settings_screen.dart';

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
                              title: Text("Clear Commands List"),
                              subtitle: Text("Clear the whole commands list in terminal"),
                              leading: Icon(Icons.list_alt)
                          ),
                          ListTile(
                              title: Text("Reset Commands List"),
                              subtitle: Text("Reset commands list to default in terminal"),
                              leading: Icon(Icons.cached)
                          ),
                          ListTile(
                              title: Text("Clear Network Profiles"),
                              leading: Icon(Icons.network_cell)
                          ),
                          ListTile(
                              title: Text("Clear SSH Hosts"),
                              leading: Icon(Icons.computer)
                          ),
                          ListTile(
                              title: Text("Clear SSH Keys"),
                              leading: Icon(Icons.vpn_key)
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