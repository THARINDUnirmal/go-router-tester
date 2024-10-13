import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tester2/routers/route_names.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "This is a Home page",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                //name path rote
                GoRouter.of(context).goNamed(RouteNames.profile);
              },
              child: const Text("go to profile page"),
            ),
            ElevatedButton(
              onPressed: () {
                GoRouter.of(context).go("/profile/child");
              },
              child: const Text("go to Child page"),
            ),
            ElevatedButton(
              onPressed: () {
                //extra parameter example !
                // GoRouter.of(context)
                //     .go("/UserName", extra: {"name": "Tharindu", "age": 21});

                //path parameters
                const String name = "Tharindu Nirmal";
                GoRouter.of(context).go("/user/$name");
              },
              child: const Text("User page"),
            )
          ],
        ),
      ),
    );
  }
}
