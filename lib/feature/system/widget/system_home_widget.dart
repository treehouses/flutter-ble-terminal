import 'package:flutter/material.dart';

class SystemHomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          child: Text("Shutdown & Reboot",),
          onTap: () {

          },
        ),
        InkWell(
          child: Text("Open VNC"),
          onTap: () {},
        ),
        InkWell(
          child: Text("Toggle Camera"),
          onTap: () {},
        ),
      ],
    );
  }
}
