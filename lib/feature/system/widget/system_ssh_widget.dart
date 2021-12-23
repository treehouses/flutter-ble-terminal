import 'package:flutter/material.dart';

class SystemSSHWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ExpansionTile(
          title: Container(
            child: Text("Add SSH Key",)
            )
          ),
        ExpansionTile(
          title: Container(
          child: Text("SSH 2 Factor Authentication")
          )
        ),
      ],
    );
  }
}
