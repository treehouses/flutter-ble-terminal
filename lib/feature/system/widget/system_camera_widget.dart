import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SystemCameraWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15.0),
          child: ExpansionTile(
              backgroundColor: Colors.black12,
              collapsedBackgroundColor: Colors.black12,
              title: Container(
                child: Text("Toggle Camera"),
              ),
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Camera:',
                          ),
                          Icon(
                            Icons.video_call,
                            color: Colors.black,
                            size: 24,
                          ),
                        ],
                      ),
                      Switch(
                          value: false,
                          onChanged: null
                      )
                    ],
                  ),
                ),
              ]
          ),
        ),
      );
  }

}