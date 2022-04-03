import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';
import 'package:treehousesble/common/bloc/bluetooth_cubit.dart';
import 'package:treehousesble/feature/system/widget/system_camera_widget.dart';
import 'package:treehousesble/feature/system/widget/system_shutdownreboot_widget.dart';
import 'package:treehousesble/feature/system/widget/system_vnc_widget.dart';

class SystemHomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
      SingleChildScrollView(
        child: Column(
          children: [
            SystemShutdownRebootWidget(),
            SystemVNCWidget(),
            SystemCameraWidget(),
          ],
      )
    );
  }
}
