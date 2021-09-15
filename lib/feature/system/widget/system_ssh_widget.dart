import 'package:flutter/material.dart';

class SystemSSHWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          child: Text("Add SSH Key",),
          onTap: () {

          },
        ),
        InkWell(
          child: Text("SSH 2 Factor Authentication"),
          onTap: () {},
        ),
      ],
    );
  }
}
