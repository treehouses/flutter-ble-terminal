import 'package:flutter/material.dart';

class SystemInternetWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          child: Text("Internet 1",),
          onTap: () {

          },
        ),
        InkWell(
          child: Text("Internet 2"),
          onTap: () {},
        ),
      ],
    );
  }
}