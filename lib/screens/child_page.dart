import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ChildPage extends StatelessWidget {
  const ChildPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "This is a Child page",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                GoRouter.of(context).go("/profile");
              },
              child: const Text("go to profile page"),
            ),
            ElevatedButton(
              onPressed: () {
                GoRouter.of(context).go("/");
              },
              child: const Text("go to Home page"),
            )
          ],
        ),
      ),
    );
  }
}
