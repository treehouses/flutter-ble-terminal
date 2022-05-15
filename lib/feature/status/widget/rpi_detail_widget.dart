import 'package:flutter/cupertino.dart';

import 'cli_widget.dart';
import 'rpi_widget.dart';

class RPICLIWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                'RPI Details',
                style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  'assets/icons/ic_pencil.png',
                  width: 20,
                  height: 20,
                  fit: BoxFit.cover,
                ),
              )
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            RPIWidget(),
            CLIWidget(),
          ],
        ),
      ]
    );
  }

}