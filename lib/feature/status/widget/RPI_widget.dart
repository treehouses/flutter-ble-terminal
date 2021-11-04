import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RPIWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              'RPI Details',
            ),
            Image.network(
              'https://picsum.photos/seed/192/600',
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            )
          ],
        ),
        Align(
          alignment: AlignmentDirectional(0, 0),
          child: Text(
            'Hostname: Checking..',
            textAlign: TextAlign.start,
          ),
        ),
        Align(
          alignment: AlignmentDirectional(0, 0),
          child: Text(
            'Model: Checking..',
            textAlign: TextAlign.start,
          ),
        ),
        Align(
          alignment: AlignmentDirectional(0, 0),
          child: Text(
            'CPU: Checking..',
          ),
        ),
        Align(
          alignment: AlignmentDirectional(0, 0),
          child: Text(
            'Image Version: Checking..',
          ),
        ),
        Align(
          alignment: AlignmentDirectional(0, 0),
          child: Text(
            'Remote Version: Checking',
          ),
        )
      ],
    );
  }

}