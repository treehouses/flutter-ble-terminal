import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_blue/flutter_blue.dart';
import 'package:treehousesble/common/bloc/bluetooth_cubit.dart';
import 'package:treehousesble/common/bloc/bluetooth_state.dart';

class TerminalScreen extends StatefulWidget {
  TerminalScreen();

  @override
  State<TerminalScreen> createState() => _TerminalScreenState();
}

class _TerminalScreenState extends State<TerminalScreen> {
  List<String> responseList = [];
  TextEditingController inputController = new TextEditingController();

  @override
  void initState() {
    super.initState();
    context.read<BluetoothCubit>()..checkDeviceConnected();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer(
        bloc: context.read<BluetoothCubit>(),
        listener: (con, state) {
          if (state is StateReadSuccess) {
            responseList.add(state.data);
          }
        },
        builder: (context, state) {
          return Scaffold(
              body: SafeArea(
                  child: Padding(child: Column(
                    children: [
                      Expanded(
                          child: ListView.builder(
                            padding: EdgeInsets.zero,
                            scrollDirection: Axis.vertical,
                            itemCount: responseList.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Text(responseList[index]);
                            },
                          )),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: TextFormField(
                              controller: inputController,
                              obscureText: false,
                              decoration: InputDecoration(
                                hintText: 'Enter Command',
                              ),
                            ),
                          ),
                          state is StateDeviceNotConnected
                              ? Text("Not connected to device")
                              : IconButton(
                            icon: Icon(Icons.send,
                                color: Theme.of(context).iconTheme.color),
                            onPressed: () {
                              String input = inputController.text;
                              responseList.add(input);
                              context.read<BluetoothCubit>()
                                ..writeMessage(inputController.text);
                            },
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.settings_outlined,
                              color: Colors.black,
                              size: 30,
                            ),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.settings_outlined,
                              color: Colors.black,
                              size: 30,
                            ),
                            onPressed: () {},
                          )
                        ],
                      )
                    ],
                  ), padding: EdgeInsets.all(16),)));
        });
  }
}
