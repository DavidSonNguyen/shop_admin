import 'package:go_router/go_router.dart';
import 'package:shop_admin/ui/base_screen.dart';
import 'package:shop_admin/ui/screens/home_screen.dart';

class AppRoutes {
  static GoRouter get routes => GoRouter(
        routes: [
          GoRoute(
            name: '/',
            path: '/',
            builder: (context, state) => const BaseScreen(),
            routes: [
              GoRoute(
                name: '/home',
                path: '/home',
                builder: (context, state) => const HomeScreen(),
              ),
            ],
          ),
        ],
      );
}
