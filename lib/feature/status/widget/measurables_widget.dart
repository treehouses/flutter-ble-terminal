import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MeasurableWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              'Memory',
            ),
            Text(
              'Checking......',
            )
          ],
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              'Storage',
            ),
            Text(
              'Checking......',
            )
          ],
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              'Temperature',
            ),
            Text(
              'Checking......',
            )
          ],
        )
      ],
    );
  }
  
}