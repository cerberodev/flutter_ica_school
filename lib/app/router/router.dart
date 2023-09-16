import 'package:app_dos/counter/counter.dart';
import 'package:app_dos/gmail/gmail.dart';
import 'package:app_dos/home/home.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const HomePage();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'counter',
          builder: (BuildContext context, GoRouterState state) {
            return const CounterPage();
          },
        ),
        GoRoute(
          path: 'gmail',
          builder: (BuildContext context, GoRouterState state) {
            return const GmailPage();
          },
        ),
      ],
    ),
  ],
);
