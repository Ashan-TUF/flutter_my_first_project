import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
// import 'package:my_first_app/data/user.dart';
import 'package:my_first_app/pages/age.dart';
import 'package:my_first_app/pages/back.dart';
import 'package:my_first_app/pages/child_page.dart';
import 'package:my_first_app/pages/home_page.dart';
import 'package:my_first_app/pages/login_page.dart';
import 'package:my_first_app/pages/profile_page.dart';
import 'package:my_first_app/pages/user_page.dart';
import 'package:my_first_app/router/route_names.dart';

class RouterClass {
  final router = GoRouter(
    initialLocation: "/",
    errorPageBuilder: (context, state) {
      return const MaterialPage(
        child: Scaffold(
          body: Center(
            child: Text("this page is not found!!"),
          ),
        ),
      );
    },

    //redirect to login page of use is not logged in
    // redirect: (context, state) {
    //   bool isUserLoggedIn = UserData.isUserLoggedIn;
    //   if (isUserLoggedIn) {
    //     return "/";
    //   } else {
    //     return "/login";
    //   }
    // },
    routes: [
      //HomePage
      GoRoute(
        name: "home",
        path: "/",
        builder: (context, state) {
          return const HomePage();
        },
      ),

      //Profile page
      GoRoute(
        name: RouteNamesClass.profile,
        path: "/profile",
        builder: (context, state) {
          return const ProfilePage();
        },
        routes: [
          GoRoute(
            name: "child",
            path: "child",
            builder: (context, state) {
              return const ChildPage();
            },
          )
        ],
      ),

      //user page extra parameter
      // GoRoute(
      //   path: "/user",
      //   builder: (context, state) {
      //     final name = (state.extra as Map<String, dynamic>)["name"] as String;
      //     final age = (state.extra as Map<String, dynamic>)["age"] as int;
      //     return UserPage(
      //       userName: name,
      //       userAge: age,
      //     );
      //   },
      // )

      //user page path parameter
      GoRoute(
          path: "/user/:name",
          builder: (context, state) {
            return UserPage(
              userName: state.pathParameters['name']!,
            );
          }),
      GoRoute(
        path: "/age",
        name: RouteNamesClass.age,
        builder: (context, state) {
          final int age = state.uri.queryParameters['age'] == null
              ? 0
              : int.parse(state.uri.queryParameters['age']!);

          return AgePage(age: age);
        },
      ),
      //login page
      GoRoute(
        path: "/login",
        builder: (context, state) {
          return const LoginPage();
        },
      ),
      //back
      GoRoute(
        path: "/back",
        builder: (context, state) {
          return const BackPage();
        },
      )
    ],
  );
}
