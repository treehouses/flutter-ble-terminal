import 'package:flutter/material.dart';

class SystemInternetWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ExpansionTile(
          title: Container(
            child: Text("Share Internet With Pi (beta)",),
          )
        ),
        ExpansionTile(
          title: Container(
            child: Text("Internet Blocking"),
          )
        ),
      ],
    );
  }
}