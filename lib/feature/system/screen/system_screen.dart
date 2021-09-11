import 'package:flutter/material.dart';

return MaterialApp(
  home: DefaultTabController(
    length: 4,
    child: Scaffold(
      appBar: AppBar(
        bottom: TabBar(
          tabs: [
            Tab(text: "1")
            Tab(text: "2")
            Tab(text: "3")
            Tab(text: "4")
          ]
        ),
      ),
    ),
  ),
);

TabBarView(
  Children: [
    Image(image:
    // add later)
  ],
);