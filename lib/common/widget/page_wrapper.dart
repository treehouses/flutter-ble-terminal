import 'package:flutter/material.dart';

class PageWrapper extends StatefulWidget {
  final bool? showAppbar;
  final Widget body;
  final bool? hasScaffold;
  const PageWrapper(
      {this.showAppbar = true, required this.body, this.hasScaffold = true});
  @override
  _PageWrapperState createState() => _PageWrapperState();
}

class _PageWrapperState extends State<PageWrapper> {
  @override
  Widget build(BuildContext context) {
    if (widget.hasScaffold!) {
      return Scaffold(body: widget.body);
    } else {
      return widget.body;
    }
  }
}
