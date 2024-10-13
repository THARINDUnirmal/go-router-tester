import 'package:go_router/go_router.dart';
import 'package:tester2/data/user_data.dart';
import 'package:tester2/routers/route_names.dart';
import 'package:tester2/screens/child_page.dart';
import 'package:tester2/screens/home_page.dart';
import 'package:tester2/screens/login_page.dart';
import 'package:tester2/screens/profile_page.dart';
import 'package:tester2/screens/user_screen.dart';

class GoRouterClass {
  final routes = GoRouter(
    initialLocation: "/",

    //rederect routes
    // redirect: (context, state) {
    //   bool giveBool = UserData().isUserLogIn;
    //   if (giveBool) {
    //     return "/";
    //   } else {
    //     return "/login";
    //   }
    // },
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
        name: RouteNames.profile,
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
      //user page route

      //extra parameter example !

      // GoRoute(
      //   path: "/UserName",
      //   builder: (context, state) {
      //     final name = (state.extra as Map<String, dynamic>)["name"] as String;
      //     final age = (state.extra as Map<String, dynamic>)["age"] as int;
      //     return UserScreen(
      //       name: name,
      //       age: age,
      //     );
      //   },
      // )

      //page path parameter
      GoRoute(
        path: "/user/:name",
        builder: (context, state) {
          return UserScreen(
            name: state.pathParameters["name"]!,
          );
        },
      ),
      GoRoute(
        path: "/login",
        builder: (context, state) {
          return const LogInPage();
        },
      )
    ],
  );
}
