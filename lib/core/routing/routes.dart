import 'package:go_router/go_router.dart';
import 'package:task/features/dashboard/presentation/screens/dashboard_screen.dart';

class Routes {
  static List<RouteBase> routes = <RouteBase>[
    GoRoute(
      name: RouteNames.keyLogin,
      path: RoutePath.loginRoutePath,
      builder: (context, state) => const DashBoardScreen(),
    ),
  ];
}
