import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_blue/flutter_blue.dart';

class TerminalScreen extends StatefulWidget {
  @override
  State<TerminalScreen> createState() => _TerminalScreenState();
}

class _TerminalScreenState extends State<TerminalScreen> {
  String responseString = "";
  TextEditingController textController1 = new TextEditingController();
  TextEditingController textController2 = new TextEditingController();

  /*
  Functions taken from device_screen for Terminal functionality, functionality currently not impletemented, just view
   */
  // List<int> _sendCommand(String command) {
  //   return utf8.encode(command);
  // }
  //
  // Future<void> _buildServiceTiles(BluetoothCharacteristic c, String command) async {
  //   await c.write(_sendCommand(command), withoutResponse: true);
  //   List<int> response =  await c.read();
  //   setState(() {
  //     responseString = utf8.decode(response);
  //   });
  //   print(utf8.decode(response));
  // }

  @override
  void initState(){
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          // padding: EdgeInsets.zero,
          // scrollDirection: Axis.vertical,
          children: [
            Align(
              alignment: Alignment(0, -0.15),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Icon(
                    Icons.circle,
                    color: Colors.black,
                    size: 30,
                  ),
                  Expanded(
                    child: TextFormField(
                      controller: textController1,
                        obscureText: false,
                      decoration: InputDecoration(
                        hintText: 'Bluetooth',
                      ),
                    ),
                  ),
                  Icon(
                    Icons.info_outline,
                    color: Colors.black,
                    size: 30,
                  )
                ],
              ),
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                scrollDirection: Axis.vertical,
                children: [],
              )
            ),

            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: TextFormField(
                    controller: textController2,
                    obscureText: false,
                    decoration: InputDecoration(
                      hintText: 'Enter Commands',
                    ),
                  ),
                ),
                Icon(
                  Icons.double_arrow,
                  color: Colors.black,
                  size: 30,
                ),
                Icon(
                  Icons.settings_outlined,
                  color: Colors.black,
                  size: 30,
                ),
                Icon(
                  Icons.settings_outlined,
                  color: Colors.black,
                  size: 30,
                ),
              ],
            )
          ],
        )
      )
    );
  }



}