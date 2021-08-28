import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'multi_bloc_listing.dart';

class MultiRepoListing extends StatelessWidget {
  final Widget child;
  const MultiRepoListing({required this.child});
  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(providers: [
    ], child: MultiBlocListing(child: child));
  }
}
