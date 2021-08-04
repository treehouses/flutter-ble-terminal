import 'package:flutter/material.dart';

class TextSizeSettingsScreen extends StatefulWidget {
  @override
  State<TextSizeSettingsScreen> createState() => _TextSizeSettingsScreenState();
}

class _TextSizeSettingsScreenState extends State<TextSizeSettingsScreen> {
  double textSize = 12;
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