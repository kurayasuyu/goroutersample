import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gorouter/main.dart';

class Page2Screen extends StatelessWidget {
  /// Creates a [Page2Screen].
  const Page2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text(MyApp.title)),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ElevatedButton(
            onPressed: () => context.go('/'),
            child: const Text('Go back to home page'),
          ),
        ],
      ),
    ),
  );
}