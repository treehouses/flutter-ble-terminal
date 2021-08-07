import 'package:flutter/material.dart';
import 'package:flutter_blue/flutter_blue.dart';

class TerminalScreen extends StatefulWidget {
  @override
  State<TerminalScreen> createState() => _TerminalScreenState();
}

class _TerminalScreenState extends State<TerminalScreen> {
  String responseString = "";
  TextEditingController textController1 = new TextEditingController();
  TextEditingController textController2 = new TextEditingController();

  @override
  void initState(){
    super.initState();
    textController1 = TextEditingController();
    textController2 = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          // padding: EdgeInsets.zero,
          // scrollDirection: Axis.vertical,
          children: [
            Align(
              alignment: Alignment(0, -0.15),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Icon(
                    Icons.circle,
                    color: Colors.black,
                    size: 30,
                  ),
                  Expanded(
                    child: TextFormField(
                      controller: textController1,
                        obscureText: false,
                      decoration: InputDecoration(
                        hintText: 'Bluetooth',
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width:1,
                          ),
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(4.0),
                            topRight: Radius.circular(4.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Icon(
                    Icons.info_outline,
                    color: Colors.black,
                    size: 30,
                  )
                ],
              ),
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                scrollDirection: Axis.vertical,
                children: [],
              )
            ),

            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: TextFormField(
                    controller: textController2,
                    obscureText: false,
                    decoration: InputDecoration(
                      hintText: 'Enter Commands',
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
                ),
                Icon(
                  Icons.double_arrow,
                  color: Colors.black,
                  size: 30,
                ),
                Icon(
                  Icons.settings_outlined,
                  color: Colors.black,
                  size: 30,
                ),
                Icon(
                  Icons.settings_outlined,
                  color: Colors.black,
                  size: 30,
                ),
              ],
            )
          ],
        )
      )
    );
  }



}