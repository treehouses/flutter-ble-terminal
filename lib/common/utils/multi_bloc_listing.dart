import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MultiBlocListing extends StatelessWidget {
  final Widget child;
  const MultiBlocListing({required this.child});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
      ],
      child: child,
    );
  }
}
