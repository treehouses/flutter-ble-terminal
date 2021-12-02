import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CLIWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFF5F5F5),
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Column(
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
                style: TextStyle(
                  fontWeight: FontWeight.bold
                ),
              )
            ],
          ),
          Align(
            alignment: AlignmentDirectional(0, 0),
            child: Text(
              'Checking Version...',
              textAlign: TextAlign.start,
              style: TextStyle(
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          ElevatedButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    )
                ),
                backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
              ),
              onPressed: () {
              },
              child: Text('Upgrade'),
          )
        ],
      ),
    );
  }
}