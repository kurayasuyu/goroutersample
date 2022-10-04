import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gorouter/main.dart';

class Page1Screen extends StatelessWidget {
  /// Creates a [Page1Screen].
  const Page1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text(MyApp.title)),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ElevatedButton(
            onPressed: () => context.go('/page2'),
            child: const Text('Go to page 2'),
          ),
        ],
      ),
    ),
  );
}