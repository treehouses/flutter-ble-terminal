import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MeasurableWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFF5F5F5),
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                'Memory',
                style: TextStyle(
                    fontWeight: FontWeight.bold
                ),
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
                style: TextStyle(
                    fontWeight: FontWeight.bold
                ),
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
                style: TextStyle(
                    fontWeight: FontWeight.bold
                ),
              ),
              Text(
                'Checking......',
              )
            ],
          )
        ],
      ),
    );
  }
  
}