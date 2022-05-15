import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:treehousesble/feature/status/widget/rpi_detail_widget.dart';
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
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
              child: BluetoothWidget(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
              child: NetworkWidget(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
              child: RPICLIWidget(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
              child: MeasurableWidget(),
            ),
          ],
        )
      ),
    );
  }

}