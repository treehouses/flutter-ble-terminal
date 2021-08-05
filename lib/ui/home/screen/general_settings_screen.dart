import 'package:flutter/material.dart';

class GeneralSettingsScreen extends StatefulWidget {
  @override
  State<GeneralSettingsScreen> createState() => _GeneralSettingsScreenState();
}

void showAlertDialog(BuildContext context, String title, String content) {
  // set up the buttons
  Widget noButton = TextButton(
      child: Text("No"),
      onPressed:  () => Navigator.of(context).pop()
  );
  Widget yesButton = TextButton(
      child: Text("Yes"),
      onPressed:  () => Navigator.of(context).pop()
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text(title),
    content: Text(content),
    actions: [
      noButton,
      yesButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
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
                              onTap: () => showAlertDialog(context, "Reactivate Tutorials", "Are you sure you want to reactivate the tutorials?")
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
                          onTap: () => showAlertDialog(context, "Clear Services Cache", "Are you sure you want to clear the services' cache?")
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