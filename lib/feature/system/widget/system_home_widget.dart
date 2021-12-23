import 'package:flutter/material.dart';

class SystemHomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ExpansionTile(
          title: Container(
            child: Text("Shutdown & Reboot",),
          ),
          children: <Widget>[

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Image.asset(
                      'assets/icons/shutdown.png',
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      'Shutdown',
                    ),
                  ],
                ),
                Column(
                  children: [
                    Image.asset(
                      'assets/icons/restart.png',
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      'Reboot',
                    ),
                  ],
                ),
              ],
            ),
          ]
        ),
        ExpansionTile(
          title: Container(
            child: Text("Open VNC"),
          ),
          children: <Widget>[

          ]
        ),
        ExpansionTile(
          title: Container(
            child: Text("Toggle Camera"),
          ),
          children: <Widget>[

          ]
        ),
      ],
    );
  }
}
