import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';
import 'package:treehousesble/common/bloc/bluetooth_cubit.dart';

class ShutdownRebootWidget extends StatefulWidget {
  @override
  State<ShutdownRebootWidget> createState() => _ShutdownRebootWidgetState();
}

class _ShutdownRebootWidgetState extends State<ShutdownRebootWidget> {
  @override
  void initState() {
    super.initState();
    context.read<BluetoothCubit>()..checkDeviceConnected();
  }

  @override
  Widget build(BuildContext context) {
    return
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15.0),
          child: ExpansionTile(
              backgroundColor: Colors.black12,
              collapsedBackgroundColor: Colors.black12,
              title: Container(
                child: Text("Shutdown & Reboot",),
              ),
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          IconButton(
                              onPressed: (){
                                context.read<BluetoothCubit>()
                                  ..writeMessage("treehouses shutdown now");
                              },
                              icon:
                              Image.asset('assets/icons/shutdown.png'),
                              iconSize: 100.0
                          ),
                          Text(
                            'Shutdown',
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          IconButton(
                              onPressed: (){
                                print("reboot pressed");
                                context.read<BluetoothCubit>()
                                  ..writeMessage("treehouses reboots now");
                              },
                              icon:
                              Image.asset('assets/icons/restart.png'),
                              iconSize: 100.0
                          ),
                          Text(
                            'Reboot',
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ]
          ),
        ),
      );
  }
}