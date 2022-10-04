import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'page/page1/page1.dart';
import 'page/page2/page2.dart';

void main() {
  runApp(MyApp());
}

/// The main app.
class MyApp extends StatelessWidget {
  /// Creates an [App].
  MyApp({Key? key}) : super(key: key);

  /// The title of the app.
  static const String title = 'GoRouter Example: Declarative Routes';

  @override
  Widget build(BuildContext context) => MaterialApp.router(
    routerConfig: _router,
    title: title,
  );

  final GoRouter _router = GoRouter(
    routes: <GoRoute>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) =>
        const Page1Screen(),
        routes: <GoRoute>[
          GoRoute(
            path: 'page2',
            builder: (BuildContext context, GoRouterState state) =>
            const Page2Screen(),
          ),
        ],
      ),
    ],
  );
}