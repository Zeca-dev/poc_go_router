import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:poc_go_router/ui/screens/home_screen.dart';
import 'package:poc_go_router/ui/screens/pages/page1.dart';
import 'package:poc_go_router/ui/screens/pages/page2.dart';
import 'package:poc_go_router/ui/screens/pages/page3.dart';
import 'package:poc_go_router/ui/screens/product_list_screen.dart';
import 'package:poc_go_router/ui/screens/product_screen.dart';

final _rootNavigationKey = GlobalKey<NavigatorState>();

final GoRouter router = GoRouter(
  navigatorKey: _rootNavigationKey,
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) {
        return const HomeScreen();
      },
    ),
    GoRoute(
        path: '/product',
        pageBuilder: (BuildContext context, GoRouterState state) {
          return CustomTransitionPage(
            child: const ProductScreen(),
            transitionDuration: const Duration(milliseconds: 300),
            fullscreenDialog: true,
            transitionsBuilder: (BuildContext context, Animation<double> animation,
                    Animation<double> secondaryAnimation, Widget child) =>
                SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(0.0, 1.0),
                end: Offset.zero,
              ).animate(animation),
              child: child,
            ),
          );
        },
        routes: [
          GoRoute(
            path: 'page1',
            pageBuilder: (BuildContext context, GoRouterState state) {
              return CustomTransitionPage(
                child: const Page1(),
                transitionDuration: const Duration(milliseconds: 300),
                transitionsBuilder: (BuildContext context, Animation<double> animation,
                        Animation<double> secondaryAnimation, Widget child) =>
                    SlideTransition(
                  position: Tween<Offset>(
                    begin: const Offset(1.0, 0.0),
                    end: Offset.zero,
                  ).animate(animation),
                  child: child,
                ),
              );
            },
          ),
          GoRoute(
            path: 'page2',
            pageBuilder: (BuildContext context, GoRouterState state) {
              return CustomTransitionPage(
                child: const Page2(),
                transitionDuration: const Duration(milliseconds: 300),
                transitionsBuilder: (BuildContext context, Animation<double> animation,
                        Animation<double> secondaryAnimation, Widget child) =>
                    SlideTransition(
                  position: Tween<Offset>(
                    begin: const Offset(1.0, 0.0),
                    end: Offset.zero,
                  ).animate(animation),
                  child: child,
                ),
              );
            },
          ),
          GoRoute(
            path: 'page3',
            pageBuilder: (BuildContext context, GoRouterState state) {
              return CustomTransitionPage(
                child: const Page3(),
                transitionDuration: const Duration(milliseconds: 300),
                transitionsBuilder: (BuildContext context, Animation<double> animation,
                        Animation<double> secondaryAnimation, Widget child) =>
                    SlideTransition(
                  position: Tween<Offset>(
                    begin: const Offset(1.0, 0.0),
                    end: Offset.zero,
                  ).animate(animation),
                  child: child,
                ),
              );
            },
          ),
        ]),
    GoRoute(
      path: '/productList',
      builder: (BuildContext context, GoRouterState state) {
        return const ProductListScreen();
      },
    ),
  ],
);
