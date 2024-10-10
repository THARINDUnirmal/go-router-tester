import 'package:go_router/go_router.dart';
import 'package:tester2/screens/child_page.dart';
import 'package:tester2/screens/home_page.dart';
import 'package:tester2/screens/profile_page.dart';

class GoRouterClass {
  final routes = GoRouter(
    initialLocation: "/",
    routes: [
      //home page route
      GoRoute(
        name: "Home page",
        path: "/",
        builder: (context, state) {
          return const HomePage();
        },
      ),

      //profile page route
      GoRoute(
        name: "ProfilePage",
        path: "/profile",
        builder: (context, state) {
          return const ProfilePage();
        },
        routes: [
          // profile >> child page route
          GoRoute(
            name: "child",
            path: "child",
            builder: (context, state) {
              return const ChildPage();
            },
          )
        ],
      ),
    ],
  );
}
