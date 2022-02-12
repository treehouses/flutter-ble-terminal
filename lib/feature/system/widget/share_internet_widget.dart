import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShareInternetWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15.0),
        child: ExpansionTile(
            backgroundColor: Colors.black12,
            collapsedBackgroundColor: Colors.black12,
            title: Container(
              child: Text("Share Internet With Pi (beta)",),
            ),
            children: <Widget>[
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      child: Text(
                        'Share Internet Using a USB Cable',
                        style: TextStyle(
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                  Text(
                    'Connect this device to Pi using a USB Cable. Use the Configure button to enable USB Tethering in Settings to start the connection.',
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
                    child: Text('CONFIGURE'),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      child: Text(
                        'Share Internet Using WiFi',
                        style: TextStyle(
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                  Text(
                    'Use the Configure button to enable Mobile Hotspot in Settings and to edit the Hotspot Name and Password. Enter those details below to start the connection.',
                  ),
                  TextFormField(
                    obscureText: false,
                    decoration: InputDecoration(
                      hintText: 'Hotspot Name',
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black45,
                          width: 1,
                        ),
                      ),
                    ),
                  ),
                  TextFormField(
                    obscureText: false,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black45,
                          width: 1,
                        ),
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
                    child: Text('CONNECT TO MOBILE HOTSPOT'),
                  )
                ],
              )
            ]
        ),
      ),
    );
  }

}