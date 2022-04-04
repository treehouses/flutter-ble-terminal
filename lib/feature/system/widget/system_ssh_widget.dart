import 'package:flutter/material.dart';
import 'package:treehousesble/feature/system/widget/ssh_authenticate_widget.dart';
import 'package:treehousesble/feature/system/widget/ssh_key_widget.dart';

class SystemSSHWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SSHKeyWidget(),
          SSHAutheticateWidget(),
        ],
      )
    );
  }
}
