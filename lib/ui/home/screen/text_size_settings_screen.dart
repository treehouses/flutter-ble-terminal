import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TextSizeSettingsScreen extends StatefulWidget {
  @override
  State<TextSizeSettingsScreen> createState() => _TextSizeSettingsScreenState();
}

class _TextSizeSettingsScreenState extends State<TextSizeSettingsScreen> {
  double textSize = 12;

  @override
  void initState() {
    super.initState();
    loadTextSize().then((val) => textSize = val);
  }

  Future<double> loadTextSize() async {
    final prefs = await SharedPreferences.getInstance();
    return (prefs.getDouble('textSize') ?? 12);
  }

  void setTextSize(double textSize) async {
    final prefs = await SharedPreferences.getInstance();
    setState(() async => await prefs.setDouble('textSize', textSize));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Card(
                      margin: EdgeInsets.fromLTRB(32, 0, 32, 0),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                      child: Column(
                          children: <Widget> [
                            ListTile(
                              title: Text("Sample Text")
                            ),
                            ListTile(
                                title: Text(
                                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec mi at lacus placerat rutrum vitae ut urna. Morbi in ipsum ut nisl imperdiet molestie.",
                                    style: TextStyle(
                                      fontSize: textSize
                                    )
                                ),
                            )
                          ]
                      )
                  ),

                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Card(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                      child: Column(
                          children: <Widget> [
                            Slider(
                                value: textSize,
                                min: 10,
                                max: 25,
                                divisions: 4,
                                onChanged: (val) => setState(() => textSize = val)
                            ),
                            OutlinedButton(
                              child: Text("CONFIRM"),
                              onPressed: () {
                                setTextSize(textSize);
                                Navigator.pop(context);
                              },
                            )
                          ]
                      )
                    )
                  )
                ]
            )
        )
    );
  }
}