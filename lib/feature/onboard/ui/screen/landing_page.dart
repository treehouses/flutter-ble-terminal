import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:treehousesble/common/bloc/bluetooth_cubit.dart';
import 'package:treehousesble/common/bloc/bluetooth_state.dart';
import 'package:treehousesble/feature/dashboard/screen/dashboard_page.dart';
import 'package:treehousesble/feature/dashboard/screen/search_rpi_screen.dart';

import 'onboard_page.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BluetoothCubit, DataState>(
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
