import 'package:flutter/material.dart';
import 'package:treehousesble/feature/system/widget/system_home_widget.dart';
import 'package:treehousesble/feature/system/widget/system_internet_widget.dart';
import 'package:treehousesble/feature/system/widget/system_ssh_widget.dart';


class SystemScreen extends StatefulWidget{
  @override
  _SystemScreenState createState() => _SystemScreenState();
}

class _SystemScreenState extends State<SystemScreen> {
  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(text: "Overview",),
              Tab(text: "Details",),
            ],
          ),
          title: const Text('Services'),
        ),
        body: TabBarView(
          children: [
            ServicesOverviewWidget(),
            ServicesDetailsWidget(),
          ],
        ),
      ),
    );
  }
}