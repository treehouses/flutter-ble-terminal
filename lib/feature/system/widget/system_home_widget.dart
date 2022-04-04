import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';
import 'package:treehousesble/common/bloc/bluetooth_cubit.dart';
import 'package:treehousesble/feature/system/widget/camera_widget.dart';
import 'package:treehousesble/feature/system/widget/shutdown_reboot_widget.dart';
import 'package:treehousesble/feature/system/widget/vnc_widget.dart';

class SystemHomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
      SingleChildScrollView(
        child: Column(
          children: [
            ShutdownRebootWidget(),
            VNCWidget(),
            CameraWidget(),
          ],
      )
    );
  }
}
