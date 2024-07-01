import 'package:go_router/go_router.dart';
import 'package:my_first_app/pages/home_page.dart';
import 'package:my_first_app/pages/profile_page.dart';

class RouterClass {
  final router = GoRouter(
    initialLocation: "/",
    routes: [
      //HomePage
      GoRoute(
        path: "/",
        builder: (context, state) {
          return const HomePage();
        },
      ),

      //Profile page
      GoRoute(
        path: "/profile",
        builder: (context, state) {
          return const ProfilePage();
        },
      )
    ],
  );
}
