import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SSHKeyWidget extends StatelessWidget{
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
      );
    }

}