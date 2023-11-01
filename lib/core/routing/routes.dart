import 'package:go_router/go_router.dart';
import 'package:task/core/routing/route_names.dart';
import 'package:task/core/routing/route_paths.dart';
import 'package:task/features/dashboard/presentation/screens/dashboard_screen.dart';

class Routes {
  static List<RouteBase> routes = <RouteBase>[
    GoRoute(
      name: RouteNames.dashboard,
      path: RoutePath.initialRoutePath,
      builder: (context, state) => const DashBoardScreen(),
    ),
  ];
}
