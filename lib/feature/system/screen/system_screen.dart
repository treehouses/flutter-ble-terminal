import 'package:flutter/material.dart';
import 'package:treehousesble/feature/system/widget/system_ssh_widget.dart';


class SystemScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(text: "SSH",),
              Tab(text: "Internet",),
              Tab(text: "Other",),
            ],
          ),
          title: const Text('System'),
        ),
        body: TabBarView(
          children: [
            SystemSSHWidget(),
            Text("System2"),
            Text("System2"),
          ],
        ),
      ),
    );
  }
  
}