import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:treehousesble/app/theme.dart';

class NetworkWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              'Network',
              style: TextStyle(
                fontFamily: 'Poppins',
              ),
            ),
            Image.asset(
              'assets/icons/ic_wifi.png',
              width: 30,
              height: 30,
              fit: BoxFit.cover,
            )
          ],
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Image.asset(
              'assets/icons/ic_wifi.png',
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            ),
            Text(
              'Checking Network Mode.....',
              style: TextStyle(
                fontFamily: 'Poppins',
              ),
            )
          ],
        ),
        Align(
          alignment: AlignmentDirectional(-1, 0),
          child: Text(
            'IP Address: Checking.....',
            textAlign: TextAlign.start,
          ),
        ),
        Align(
          alignment: AlignmentDirectional(-1, 0),
          child: Text(
            'SSID: Checking.....',
            textAlign: TextAlign.start,
          ),
        )
      ],
    );
  }
}