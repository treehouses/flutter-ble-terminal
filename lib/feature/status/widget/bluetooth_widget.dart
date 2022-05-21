import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:treehousesble/app/theme.dart';

class BluetoothWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                'Bluetooth',
                style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold
                ),
              ),
              Expanded(
                child: Align(
                  alignment: AlignmentDirectional(1, 0),
                  child: Container(
                    width: 100.0,
                    height: 25.0,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            )
                        ),
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                      ),
                      onPressed: () {
                      },
                      child: Text('Refresh'),
                    ),
                  )
                )
              )
            ],
          ),
        ),
          Container(
            decoration: BoxDecoration(
              color: Color(0xFFF5F5F5),
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    'assets/icons/ic_bluetooth_icon.png',
                    width: 45,
                    height: 45,
                    fit: BoxFit.cover,
                  ),
                ),
                Text(
                  'Bluetooth RPI Connection: Checking.....',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                  ),
                )
              ],
            ),
          )
      ],
    );
  }
  
}