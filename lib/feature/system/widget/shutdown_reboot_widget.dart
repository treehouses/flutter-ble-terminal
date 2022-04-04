import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';
import 'package:treehousesble/common/bloc/bluetooth_cubit.dart';

class ShutdownRebootWidget extends StatelessWidget {
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
                              Image.asset(
                                'assets/icons/shutdown.png',
                                width: 200,
                                height: 200,
                                fit: BoxFit.cover,
                              )
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
                                context.read<BluetoothCubit>()
                                  ..writeMessage("treehouses reboots now");
                              },
                              icon:
                              Image.asset(
                                'assets/icons/restart.png',
                                width: 125,
                                height: 125,
                                fit: BoxFit.cover,
                              )
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