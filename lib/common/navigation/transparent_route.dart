import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TransparentRoute extends PageRoute<void> {
  TransparentRoute({
    required this.child,
    this.useSlideTransition = true,
    RouteSettings? settings,
  }) : super(settings: settings, fullscreenDialog: false);

  final bool useSlideTransition;
  final Widget child;

  @override
  bool get opaque => false;

  @override
  Color? get barrierColor => Colors.transparent;

  @override
  String? get barrierLabel => null;

  @override
  bool get maintainState => true;

  @override
  Duration get transitionDuration => Duration(milliseconds: 350);

  @override
  Widget buildPage(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation) {
    return useSlideTransition
        ? SlideTransition(
            position:
                Tween<Offset>(begin: Offset(1.0, 0.0), end: Offset(0.0, 0))
                    .animate(animation),
            child: Semantics(
              scopesRoute: true,
              explicitChildNodes: true,
              child: child,
            ),
          )
        : FadeTransition(
            opacity: Tween<double>(begin: 0, end: 1).animate(animation),
            child: Semantics(
              scopesRoute: true,
              explicitChildNodes: true,
              child: child,
            ),
          );
  }
}
