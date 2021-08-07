import 'package:flutter/material.dart';

class NetWorkScreen extends StatefulWidget {
  @override
  State<NetWorkScreen> createState() => _NetWorkScreenState();
}

class _NetWorkScreenState extends State<NetWorkScreen> {
  static int networkMode = 0;
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
                InkWell(
                  onTap: () => setState(() => networkMode = 1),
                  child: Card(
                      elevation: (networkMode == 1 ? 50: 0),
                      shadowColor: (networkMode == 1 ? Colors.redAccent: null),
                      color: Colors.redAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: SizedBox(
                          width: 125,
                          height: 125,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(Icons.wifi, color: Colors.white, size: 50),
                              Text('Wifi', style: TextStyle(fontSize: 20, color: Colors.white))
                            ],
                          )
                      )
                  )
                ),
                InkWell(
                    onTap: () => setState(() => networkMode = 2),
                  child: Card(
                      elevation: (networkMode == 2 ? 50: 0),
                      shadowColor: (networkMode == 2 ? Colors.lightBlueAccent: null),
                      color: Colors.lightBlueAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: SizedBox(
                          width: 125,
                          height: 125,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(Icons.speaker_phone, color: Colors.white, size: 50),
                              Text('Hotspot', style: TextStyle(fontSize: 20, color: Colors.white))
                            ],
                          )
                      )
                  )
                ),
              ],
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                    onTap: () => setState(() => networkMode = 3),
                    child: Card(
                        elevation: (networkMode == 3 ? 50: 0),
                        shadowColor: (networkMode == 3 ? Colors.pinkAccent: null),
                        color: Colors.pinkAccent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: SizedBox(
                            width: 125,
                            height: 125,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(Icons.share, color: Colors.white, size: 50),
                                Text('Bridge', style: TextStyle(fontSize: 20, color: Colors.white))
                              ],
                            )
                        )
                    )
                ),
                InkWell(
                    onTap: () => setState(() => networkMode = 4),
                  child: Card(
                      elevation: (networkMode == 4 ? 50: 0),
                      shadowColor: (networkMode == 4 ? Colors.amber: null),
                      color: Colors.amber,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: SizedBox(
                          width: 125,
                          height: 125,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(Icons.cable, color: Colors.white, size: 50),
                              Text('Ethernet', style: TextStyle(fontSize: 20, color: Colors.white))
                            ],
                          )
                      )
                  )
                )
              ],
            ),
            SizedBox(height: 30),
            Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                child: Column(
                    children: <Widget> [
                      ExpansionTile(
                          title: Text("Commands"),
                          trailing: Icon(Icons.keyboard_arrow_right),
                          children: [
                            ListTile(
                                title: Text("Update Network Mode")
                            ),
                            ListTile(
                                title: Text("Reboot Raspberry Pi")
                            ),
                            ListTile(
                                title: Text("Reset Network")
                            ),
                            ListTile(
                                title: Text("Speed Test")
                            ),
                            ListTile(
                                title: Text("Reverse Lookup")
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