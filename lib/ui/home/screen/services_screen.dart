import 'package:flutter/material.dart';
import 'package:treehousesble/ui/widgets/gradient_card.dart';

class ServicesScreen extends StatefulWidget {
  @override
  State<ServicesScreen> createState() => _ServicesScreenState();
}

class _ServicesScreenState extends State<ServicesScreen> {
  bool sharingData = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Column(
                    children: <Widget> [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GradientCard(
                            [Color(0xFFffdd00), Color(0xFFfbb034)],
                            [MediaQuery.of(context).size.width, 140],
                            Icons.apps,
                            "Services"
                        ),
                      ),
                    ]
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GradientCard(
                        [Color(0xFFffdd00), Color(0xFFfbb034)],
                        [140, 140],
                        Icons.exit_to_app,
                        "SSH"
                    ),
                    GradientCard(
                        [Color(0xFFffdd00), Color(0xFFfbb034)],
                        [140, 140],
                        Icons.open_in_browser,
                        "Tunnel"
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GradientCard(
                        [Color(0xFFffdd00), Color(0xFFfbb034)],
                        [140, 140],
                        Icons.desktop_windows,
                        "System"
                    ),
                    GradientCard(
                        [Color(0xFFffdd00), Color(0xFFfbb034)],
                        [140, 140],
                        Icons.insights,
                        "Status"
                    ),
                  ],
                ),
                Row(
                  children: [
                    GradientCard(
                        [Color(0xFFffdd00), Color(0xFFfbb034)],
                        [MediaQuery.of(context).size.width, 70],
                        Icons.desktop_windows,
                        "Community"
                    ),
                  ],
                ),
              ],
            )
        )
    );
  }
}