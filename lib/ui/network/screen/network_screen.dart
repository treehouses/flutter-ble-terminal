
import 'package:flutter/material.dart';

class NetWorkScreen extends StatefulWidget {
  @override
  State<NetWorkScreen> createState() => _NetWorkScreenState();
}

class _NetWorkScreenState extends State<NetWorkScreen> {
  bool sharingData = false;
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
                Card(
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
                ),
                Card(
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
                ),
              ],
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Card(
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
                ),
                Card(
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
                ),
              ],
            )
          ]
        )
      )
    );
  }
}