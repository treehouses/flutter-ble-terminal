import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';
import 'package:treehousesble/common/bloc/bluetooth_cubit.dart';
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
      length: 3,
      child: Scaffold(
        appBar:  TabBar(
          labelColor: Theme.of(context).primaryColor,
          tabs: [
            Tab(text: "Home",),
            Tab(text: "SSH",),
            Tab(text: "Internet",)
          ],
        ),
        body: TabBarView(
          children: [
            SystemHomeWidget(),
            SystemSSHWidget(),
            SystemInternetWidget()
          ],
        ),
      ),
    );
  }
}