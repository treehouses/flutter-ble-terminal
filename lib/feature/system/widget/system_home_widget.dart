import 'package:flutter/material.dart';

class SystemHomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          child: Text("Home 1",),
          onTap: () {

          },
        ),
        InkWell(
          child: Text("Home 2"),
          onTap: () {},
        ),
      ],
    );
  }
}
