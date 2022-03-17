import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RPIWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: [
        Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              'RPI Details',
              style: TextStyle(
                fontWeight: FontWeight.bold
              ),
            ),
            Image.asset(
              'assets/icons/ic_pencil.png',
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            )
          ],
        ),
        Container(
          decoration: BoxDecoration(
            color: Color(0xFFF5F5F5),
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hostname: Checking..',
                style: TextStyle(
                  fontWeight: FontWeight.bold
                )
              ),
              Text(
                'Model: Checking..',
                style: TextStyle(
                  fontWeight: FontWeight.bold
                ),
              ),
              Text(
                'CPU: Checking..',
                style: TextStyle(
                  fontWeight: FontWeight.bold
                ),
              ),
              Text(
                'Image Version: Checking..',
                style: TextStyle(
                  fontWeight: FontWeight.bold
                ),
              ),
              Text(
                'Remote Version: Checking',
                style: TextStyle(
                  fontWeight: FontWeight.bold
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

}