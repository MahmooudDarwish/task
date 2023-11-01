import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:task/core/services/dio_helper.dart';

final sl = GetIt.instance;

class ServicesLocator {
  void init() {
    ///Go router
    sl.registerLazySingleton<GoRouter>(
            () => GoRouter(routes: AppConstance.routes));

    ///Dio helper
    sl.registerLazySingleton<DioHelper>(() => DioHelper());

    /// DATA SOURCE


    /// Repository


    /// Use Cases


    /// Bloc

  }
}
