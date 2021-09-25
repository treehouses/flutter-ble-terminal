import 'package:flutter/material.dart';
import 'package:treehousesble/app/theme.dart';
import 'package:treehousesble/common/constants/env.dart';
import 'package:treehousesble/common/constants/strings.dart';
import 'package:treehousesble/common/navigation/nav.dart';
import 'package:treehousesble/common/route/route_generator.dart';
import 'package:treehousesble/common/route/routes.dart';
import 'package:treehousesble/common/utils/multi_repo_listing.dart';
import 'package:treehousesble/common/widget/global_error_widget.dart';

class App extends StatefulWidget {
  final Env env;

  App({Key? key, required this.env}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MultiRepoListing(
      env: widget.env,
        child: MaterialApp(
      navigatorKey: Nav.navKey,
      builder: (context, Widget? widget) {
        setErrorBuilder(context);
        return widget!;
      },
      debugShowCheckedModeBanner: false,
      theme: CustomTheme.lightTheme(),
      // darkTheme: CustomTheme.darkTheme(),
      title: Strings.APP_TITLE,
      initialRoute: Routes.root,
      onGenerateRoute: RouteGenerator.generateRoute,
    ));
  }
}
