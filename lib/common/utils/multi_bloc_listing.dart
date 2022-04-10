import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:treehousesble/common/bloc/bluetooth_cubit.dart';

class MultiBlocListing extends StatelessWidget {
  final Widget child;
  const MultiBlocListing({required this.child});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => BluetoothCubit()..checkDeviceConnected(),
        ),
      ],
      child: child,
    );
  }
}
