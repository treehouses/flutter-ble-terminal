import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_blue/flutter_blue.dart';
import 'package:treehousesble/common/bloc/bluetooth_cubit.dart';
import 'package:treehousesble/common/bloc/bluetooth_state.dart';
import 'package:treehousesble/common/widget/page_wrapper.dart';

import 'device_screen.dart';

class SearchRpiScreen extends StatefulWidget {
  @override
  _SearchRpiScreenState createState() => _SearchRpiScreenState();
}

class _SearchRpiScreenState extends State<SearchRpiScreen> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<BluetoothCubit>(context)..fetchDeviceList(true);
  }

  @override
  Widget build(BuildContext context) {
    return PageWrapper(
        showAppbar: true,
        body: BlocBuilder<BluetoothCubit, DataState>(
          builder: (context, state) {
            if (state is StateFoundDevices) {
              print(state.list.length);
              print("FOUND DEVICES");

              return RefreshIndicator(
                onRefresh: (){
                  BlocProvider.of<BluetoothCubit>(context)..fetchDeviceList(true);
                  return new Future.value();
                },
                child: SingleChildScrollView(
                    child: Column(
                  children: state.list
                      .map((d) => ListTile(
                            title: Text(d.name),
                            subtitle: Text(d.id.toString()),
                            trailing: StreamBuilder<BluetoothDeviceState>(
                              stream: d.state,
                              initialData: BluetoothDeviceState.disconnected,
                              builder: (c, snapshot) {
                                if (snapshot.data ==
                                    BluetoothDeviceState.connected) {
                                  return RaisedButton(
                                    child: Text('OPEN'),
                                    onPressed: () => Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                DeviceScreen(device: d))),
                                  );
                                }
                                // else{
                                //     return ScanResultTile(s)
                                // }
                                return Text(snapshot.data.toString());
                              },
                            ),
                          ))
                      .toList(),
                )),
              );
            } else if (state is StateLoading) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            return Text("This is search screen");
          },
        ));
  }
}
