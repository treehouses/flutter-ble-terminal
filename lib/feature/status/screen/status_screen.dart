import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:treehousesble/feature/status/widget/CLI_widget.dart';
import 'package:treehousesble/feature/status/widget/RPI_widget.dart';
import 'package:treehousesble/feature/status/widget/bluetooth_widget.dart';
import 'package:treehousesble/feature/status/widget/measurables_widget.dart';
import 'package:treehousesble/feature/status/widget/network_widget.dart';

class StatusScreen extends StatefulWidget {
  @override
  State<StatusScreen> createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget> [
            BluetoothWidget(),
            NetworkWidget(),
            Row(
              children: [
                RPIWidget(),
                CLIWidget()
              ],
            ),
            MeasurableWidget()
          ],
        )
      ),
    );
  }

}