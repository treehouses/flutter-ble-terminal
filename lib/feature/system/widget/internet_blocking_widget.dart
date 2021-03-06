import 'package:flutter/material.dart';

class InternetBlockingWidget extends StatefulWidget {
  @override
  State<InternetBlockingWidget> createState() => _InternetBlockingWidgetState();
}

class _InternetBlockingWidgetState extends State<InternetBlockingWidget> {
  late double sliderValue = 0;

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
              child: Text("Internet Blocking"),
            ),
            children: <Widget>[
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        child: Text(
                          'Blocking Nothing',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Blocker Disabled',
                        ),
                        Slider(
                          activeColor: Color(0x3474e0),
                          inactiveColor: Color(0xFF9E9E9E),
                          min: 0,
                          max: 10,
                          value: sliderValue,
                          onChanged: (newValue) {
                            setState(() {
                              sliderValue = newValue;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 4, 16, 16),
                    child: Text(
                      'Move slider to change blocking',
                    ),
                  ),
                ],
              )
            ]),
      ),
    );
  }
}
