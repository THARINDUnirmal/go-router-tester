import 'package:flutter/material.dart';
import 'package:tester2/routers/go_router_class.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: GoRouterClass().routes,
    );
  }
}
