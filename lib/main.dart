import 'package:flutter/material.dart';
import 'package:my_first_app/router/router.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
   routerConfig: RouterClass().router,
     );
  }
}
