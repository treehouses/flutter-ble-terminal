import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:treehousesble/app/theme.dart';

class NetworkWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    'Network',
                  ),
                  Image.network('src')
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                      child: Image.network('src')
                  ),
                  Text(
                    'Checking Network Mode.....',
                  )
                ],
              ),
              Text(
                'IP Address: Checking.....'
              ),
              Text(
                  'SSID: Checking.....'
              )
            ],
          ),
        )
    );
  }

}