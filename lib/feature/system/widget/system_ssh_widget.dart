import 'package:flutter/material.dart';

class SystemSSHWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
                      child: Text("Add SSH Key",)
                  ),
                  children:<Widget>[
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'SSH Key:',
                              ),
                              Expanded(
                                child: TextFormField(
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    hintText: 'My Key',
                                    isDense: true,
                                    contentPadding: EdgeInsets.fromLTRB(5, 1, 5, 5),
                                    focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.black45,
                                      width: 1,
                                    ),
                                  ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
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
                            child: Text('SAVE KEY'),
                          ),
                        )
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
                      child: Text("SSH 2 Factor Authentication")
                  ),
                  children: <Widget>[
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '2 Factor Authentication',
                              ),
                              Switch(
                                  value: false,
                                  onChanged: null
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Add or Remove User:',
                              ),
                              Expanded(
                                child: TextFormField(
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    hintText: 'pi',
                                    isDense: true,
                                    contentPadding: EdgeInsets.fromLTRB(5, 1, 5, 5),
                                    focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.black45,
                                      width: 1,
                                    ),
                                  ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
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
                                child: Text('ADD'),
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
                                child: Text('REMOVE'),
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
                                child: Text('SHOW'),
                              )
                            ],
                          ),
                        ),
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
