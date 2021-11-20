import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CLIWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Image.asset(
              'assets/icons/ic_update_alert.png',
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            ),
            Text(
              'CLI Version',
            )
          ],
        ),
        Align(
          alignment: AlignmentDirectional(0, 0),
          child: Text(
            'Checking Version...',
            textAlign: TextAlign.start,
          ),
        ),
        ElevatedButton(
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
        )
      ],
    );
  }
}