import 'package:flutter/material.dart';
import 'package:treehousesble/ui/settings/widget/binary_alert_dialog.dart';

class GeneralSettingsScreen extends StatefulWidget {
  @override
  State<GeneralSettingsScreen> createState() => _GeneralSettingsScreenState();
}

class _GeneralSettingsScreenState extends State<GeneralSettingsScreen> {
  @override
  Widget build(BuildContext context) {
    bool splashScreen = false, darkMode = false, terminalAutoComplete = false, bluetooth = false;
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Card(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                    child: Column(
                        children: <Widget> [
                          SwitchListTile(
                            title: Text("Splash Screen"),
                            value: splashScreen,
                            secondary: Icon(Icons.palette),
                            onChanged: (val) {
                              setState(() {
                                splashScreen = val;
                              });
                            },
                          ),
                          SwitchListTile(
                            title: Text("Terminal Autocomplete"),
                            value: terminalAutoComplete,
                            secondary: Icon(Icons.monitor),
                            onChanged: (val) {
                              setState(() {
                                terminalAutoComplete = val;
                              });
                            },
                          ),
                          SwitchListTile(
                            title: Text("Dark Mode"),
                            value: darkMode,
                            secondary: Icon(Icons.dark_mode),
                            onChanged: (val) {
                              setState(() {
                                darkMode = val;
                              });
                            },
                          ),
                          ListTile(
                              title: Text("Reactivate Tutorials"),
                              leading: Icon(Icons.ondemand_video),
                              onTap: () => BinaryAlertDialog.show(context, "Reactivate Tutorials", "Are you sure you want to reactivate the tutorials?")
                          ),
                        ]
                    )
                ),
                Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                  child: Column(
                    children: <Widget> [
                      ListTile(
                          title: Text("Clear Services Cache"),
                          leading: Icon(Icons.cached),
                          onTap: () => BinaryAlertDialog.show(context, "Clear Services Cache", "Are you sure you want to clear the services' cache?")
                      ),
                      SwitchListTile(
                        title: Text("Reconnect Bluetooth Automatically"),
                        value: bluetooth,
                        secondary: Icon(Icons.bluetooth),
                        onChanged: (val) {
                          setState(() {
                            bluetooth = val;
                          });
                        },
                      ),
                    ]
                  )
                ),
                Card(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                    child: Column(
                        children: <Widget> [
                          ListTile(
                              title: Text("LED Pattern"),
                              leading: Icon(Icons.lightbulb)
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