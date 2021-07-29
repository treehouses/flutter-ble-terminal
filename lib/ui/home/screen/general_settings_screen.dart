import 'package:flutter/material.dart';

class GeneralSettingsScreen extends StatefulWidget {
  @override
  State<GeneralSettingsScreen> createState() => _GeneralSettingsScreenState();
}

class _GeneralSettingsScreenState extends State<GeneralSettingsScreen> {
  @override
  Widget build(BuildContext context) {
    bool splashScreen = false;
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
                            subtitle: Text("Toggle the Start Logo Screen ON or OFF"),
                            value: splashScreen,
                            onChanged: (val) {
                              setState(() {
                                splashScreen = val;
                              });
                            },
                          )
                        ]
                    )
                ),
              ],
            )
        )
    );
  }
}