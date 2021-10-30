import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:treehousesble/common/bloc/bluetooth_cubit.dart';
import 'package:treehousesble/common/bloc/bluetooth_state.dart';
import 'package:treehousesble/feature/dashboard/screen/dashboard_page.dart';
import 'package:treehousesble/feature/dashboard/screen/search_rpi_screen.dart';

import 'onboard_page.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {

  @override
  void initState() {
    super.initState();
    context.read<BluetoothCubit>()..appStart();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BluetoothCubit, DataState>(
      bloc: context.read<BluetoothCubit>(),
      builder: (context, state) {
        if (state is FirstTimeAppOpen) {

          return OnboardPage();
        } else {
          return SearchRpiScreen();
        }
      },
    );
  }
}
