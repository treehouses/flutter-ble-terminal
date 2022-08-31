import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_blue/flutter_blue.dart';
import 'package:treehousesble/common/bloc/bluetooth_cubit.dart';
import 'package:treehousesble/common/bloc/bluetooth_state.dart';
import 'package:treehousesble/common/route/routes.dart';

import 'bluetooth_off_screen.dart';

class SearchRpiScreen extends StatefulWidget {
  @override
  _SearchRpiScreenState createState() => _SearchRpiScreenState();
}

class _SearchRpiScreenState extends State<SearchRpiScreen> {
  var filter = false;
  @override
  void initState() {
    super.initState();
    context.read<BluetoothCubit>()..fetchDeviceList(filter);
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<BluetoothState>(
        stream: FlutterBlue.instance.state,
        initialData: BluetoothState.unknown,
        builder: (c, snapshot) {
          final state = snapshot.data;
          if (state == BluetoothState.on) {
            return Scaffold(
              appBar: AppBar(
                title: Text("Search RPI"),
                actions: [
                  Switch(
                    onChanged: (bool value) {
                      setState(() {
                        filter = value;
                      });
                    },
                    value: filter,
                    activeColor: Colors.blue[500],
                  ),
                  IconButton(
                    icon: Icon(Icons.refresh),
                    onPressed: () =>
                        context.read<BluetoothCubit>()..fetchDeviceList(filter),
                  )
                ],
              ),
              body: BlocConsumer<BluetoothCubit, DataState>(
                listener: (con, state) {
                  bool isActive = ModalRoute.of(context)?.isCurrent ?? false;
                  if (state is StateDeviceConnected && isActive) {
                    Navigator.of(con).pushNamed(Routes.dashboard);
                  }
                },
                builder: (context, state) {
                  if (state is StateFoundDevices) {
                    print(state.list.length);
                    print("FOUND DEVICES");
                    return RefreshIndicator(
                      onRefresh: () {
                        context.read<BluetoothCubit>()..fetchDeviceList(filter);
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
                                    initialData:
                                        BluetoothDeviceState.disconnected,
                                    builder: (c, snapshot) {
                                      if (snapshot.data ==
                                          BluetoothDeviceState.connected) {
                                        return ElevatedButton(
                                          child: Text('OPEN'),
                                          onPressed: () => context
                                              .read<BluetoothCubit>()
                                              .checkDeviceConnected(),
                                        );
                                      } else {
                                        return ElevatedButton(
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
                      child: ElevatedButton(
                        onPressed: () {
                          BlocProvider.of<BluetoothCubit>(context)
                            ..fetchDeviceList(filter);
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
          return BluetoothOffScreen(state: state);
        });
  }
}
