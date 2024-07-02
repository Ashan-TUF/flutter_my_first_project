import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_first_app/router/route_names.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text(
              "Home page",
              style: TextStyle(fontSize: 30),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              GoRouter.of(context).goNamed(RouteNamesClass.profile);
            },
            child: Text("Go to Profile"),
          ),
          ElevatedButton(
            onPressed: () {
              GoRouter.of(context).go("/profile/child");
            },
            child: Text("Go to child"),
          ),
          ElevatedButton(
            onPressed: () {
              // GoRouter.of(context).go("/user", extra: {
              //   "name": "Ashan Kavindu",
              //   "age": 23,
              // });
              String name = "Ashan Kavindu Kalupahana";
              GoRouter.of(context).go("/user/$name");
            },
            child: Text("Go to User Page"),
          ),
          ElevatedButton(
            onPressed: () {
              GoRouter.of(context).goNamed(
                RouteNamesClass.age,
                queryParameters: {"age": "23"},
              );
            },
            child: Text("Go to Age Page"),
          ),
            ElevatedButton(
            onPressed: () {
              GoRouter.of(context).push("/back");
            },
            child: const Text("Go to Back Page"),
          ),
        ],
      ),
    );
  }
}
