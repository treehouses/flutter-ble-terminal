import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_blue/flutter_blue.dart';
import 'package:treehousesble/common/bloc/bluetooth_cubit.dart';
import 'package:treehousesble/common/bloc/bluetooth_state.dart';
import 'package:treehousesble/common/navigation/nav.dart';
import 'package:treehousesble/common/route/routes.dart';
import 'package:treehousesble/common/widget/page_wrapper.dart';
import 'package:treehousesble/feature/dashboard/widget/scan_result_tile.dart';

import 'device_screen.dart';

class SearchRpiScreen extends StatefulWidget {
  @override
  _SearchRpiScreenState createState() => _SearchRpiScreenState();
}

class _SearchRpiScreenState extends State<SearchRpiScreen> {
  @override
  void initState() {
    super.initState();
    context.read<BluetoothCubit>()..fetchDeviceList(true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Search RPI"),
        actions: [
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: () =>
                context.read<BluetoothCubit>()..fetchDeviceList(true),
          )
        ],
      ),
      body: BlocConsumer<BluetoothCubit, DataState>(
        listener: (con, state) {
          if (state is StateDeviceConnected) {
            Navigator.of(con).pushNamed(Routes.dashboard);
          }
        },
        builder: (context, state) {
          if (state is StateFoundDevices) {
            print(state.list.length);
            print("FOUND DEVICES");
            return RefreshIndicator(
              onRefresh: () {
                context.read<BluetoothCubit>()..fetchDeviceList(true);
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
                                  onPressed: () => context
                                      .read<BluetoothCubit>()
                                      .checkDeviceConnected(),
                                );
                              } else {
                                return RaisedButton(
                                  child: Text('CONNECT'),
                                  onPressed: () {
                                    context.read<BluetoothCubit>()
                                      ..fetchServicesAndConnect(d);
                                  },
                                );
                              }
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
          } else if (state is StateError) {
            return Container(
              child: RaisedButton(
                onPressed: () {
                  BlocProvider.of<BluetoothCubit>(context)
                    ..fetchDeviceList(true);
                },
                child: Text("Retry"),
              ),
            );
          }
          return Container();
        },
      ),
    );
  }
}
