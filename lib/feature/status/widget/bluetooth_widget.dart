import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:treehousesble/app/theme.dart';

class BluetoothWidget extends StatelessWidget{
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
                  'Bluetooth',
                ),
                Expanded(
                  child: Align(
                    alignment: AlignmentDirectional(1,0),
                    child: Container(
                      height: 65,
                      width: 65,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: CustomTheme.primaryColor,
                      ),
                    )
                  )
                )
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  child: Image.network('src')
                ),
                Text(
                  'Bluetooth RPI Connection: Checking.....',
                )
              ],
            )
          ],
        ),
      )
    );
  }
  
}