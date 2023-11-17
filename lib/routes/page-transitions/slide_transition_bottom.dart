import 'package:flutter/material.dart';

class SlideBottomRoute extends PageRouteBuilder {
  final Widget widget;
  final Duration duration;

  SlideBottomRoute({
    required this.widget,
    super.fullscreenDialog = false,
    this.duration = const Duration(milliseconds: 300),
  }) : super(
            pageBuilder: (BuildContext context, Animation<double> animation,
                Animation<double> secondaryAnimation) {
              return widget;
            },
            transitionDuration: duration,
            transitionsBuilder: (BuildContext context, Animation<double> animation,
                Animation<double> secondaryAnimation, Widget child) {
              return SlideTransition(
                position: Tween<Offset>(
                  begin: const Offset(0.0, 1.0),
                  end: Offset.zero,
                ).animate(animation),
                child: child,
              );
            });
}
