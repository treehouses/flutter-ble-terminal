import 'package:flutter/material.dart';

class SystemInternetWidget extends StatelessWidget {
  late double sliderValue = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ExpansionTile(
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
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 1,
                      ),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(4.0),
                        topRight: Radius.circular(4.0),
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 1,
                      ),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(4.0),
                        topRight: Radius.circular(4.0),
                      ),
                    ),
                  ),
                ),
                TextFormField(
                  obscureText: false,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 1,
                      ),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(4.0),
                        topRight: Radius.circular(4.0),
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 1,
                      ),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(4.0),
                        topRight: Radius.circular(4.0),
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
        ExpansionTile(
            title: Container(
              child: Text("Internet Blocking"),
            ),
            children: <Widget>[
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      child: Text(
                        'Blocking Nothing',
                        style: TextStyle(
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Blocker Disabled',
                      ),
                      Slider(
                        activeColor: Color(0x3474e0),
                        inactiveColor: Color(0xFF9E9E9E),
                        min: 0,
                        max: 10,
                        value: sliderValue ??= 0,
                        onChanged: (newValue) {
                        },
                      ),
                    ],
                  ),
                  Text(
                    'Move slider to change blocking',
                  ),
                ],
              )
            ]
        )
      ],
    );
  }
}