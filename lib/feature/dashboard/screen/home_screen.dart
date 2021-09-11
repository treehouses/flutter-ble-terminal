import 'package:flutter/material.dart';
import 'package:treehousesble/common/widget/gradient_card.dart';


class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  static const double padding = 15;
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
                        padding: const EdgeInsets.all(padding),
                        child: GradientCard(
                            [Color(0xFFFF5F6D), Color(0xFFFFC371)],
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
                        [Color(0xFF662D8C), Color(0xFFED1E79)],
                        [160, 140],
                        Icons.exit_to_app,
                        "SSH"
                    ),
                    GradientCard(
                        [Color(0xFF11998E), Color(0xFF38EF7D)],
                        [160, 140],
                        Icons.open_in_browser,
                        "Tunnel"
                    ),
                  ],
                ),
                SizedBox(height: padding),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GradientCard(
                        [Color(0xFFF12711), Color(0xFFF5AF19)],
                        [160, 140],
                        Icons.desktop_windows,
                        "System"
                    ),
                    GradientCard(
                        [Color(0xFF690808), Color(0xFFFF6b6b)],
                        [160, 140],
                        Icons.insights,
                        "Status"
                    ),
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(padding),
                      child: GradientCard(
                          [Color(0xFF005C97), Color(0xFF363795)],
                          [MediaQuery.of(context).size.width, 50],
                          Icons.people,
                          "Community"
                      ),
                    ),
                  ],
                ),
              ],
            )
        )
    );
  }
}