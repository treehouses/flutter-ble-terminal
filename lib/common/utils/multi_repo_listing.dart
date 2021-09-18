import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:treehousesble/common/constants/env.dart';

import 'multi_bloc_listing.dart';

class MultiRepoListing extends StatelessWidget {
  final Widget child;
  final Env env;

  const MultiRepoListing({required this.child, required this.env});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(providers: [
      RepositoryProvider<Env>(create: (context) => env, lazy: true),
    ], child: MultiBlocListing(child: child));
  }
}
