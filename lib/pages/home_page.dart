import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
              GoRouter.of(context).go("/profile");
            },
            child: Text("Go to Profile"),
          ),
        ],
      ),
    );
  }
}
