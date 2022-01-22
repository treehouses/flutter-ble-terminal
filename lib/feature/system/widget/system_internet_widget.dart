import 'package:flutter/material.dart';

class SystemInternetWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          child: Text("Share Internet With Pi (beta)",),
          onTap: () {

          },
        ),
        InkWell(
          child: Text("Internet Blocking"),
          onTap: () {},
        ),
      ],
    );
  }
}