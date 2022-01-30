import 'package:flutter/material.dart';

class SystemHomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
      SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: ExpansionTile(
                  backgroundColor: Colors.black12,
                  collapsedBackgroundColor: Colors.black12,
                  title: Container(
                    child: Text("Shutdown & Reboot",),
                  ),
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Image.asset(
                              'assets/icons/shutdown.png',
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                            Text(
                              'Shutdown',
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Image.asset(
                              'assets/icons/restart.png',
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                            Text(
                              'Reboot',
                            ),
                          ],
                        ),
                      ],
                    ),
                  ]
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: ExpansionTile(
                  backgroundColor: Colors.black12,
                  collapsedBackgroundColor: Colors.black12,
                  title: Container(
                    child: Text("Open VNC"),
                  ),
                  children: <Widget>[
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        TextFormField(
                          obscureText: false,
                          decoration: InputDecoration(
                            hintText: 'Enter your Raspberry Pi\'s IP Adresss',
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
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'VNC:',
                            ),
                            Switch(
                                value: false,
                                onChanged: null
                            )
                          ],
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
                          child: Text('START CONFIGURATION'),
                        )
                      ],
                    )
                  ]
                ),
              ),
            ),
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
                    Row(
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
                  ]
                ),
              ),
            ),
          ],
      )
    );
  }
}
