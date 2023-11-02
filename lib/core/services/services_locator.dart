import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:task/core/routing/routes.dart';
import 'package:task/core/services/dio_helper.dart';
import 'package:task/core/usecase/base_usecase.dart';
import 'package:task/features/dashboard/data_layer/data_source.dart';
import 'package:task/features/dashboard/data_layer/repo.dart';
import 'package:task/features/dashboard/domain_layer/repo.dart';
import 'package:task/features/dashboard/domain_layer/use_case.dart';
import 'package:task/features/dashboard/presentation/controller/user_cubit.dart';

final sl = GetIt.instance;

class ServicesLocator {
  void init() {
    ///Go router
    sl.registerLazySingleton<GoRouter>(() => GoRouter(routes: Routes.routes));

    ///Dio helper
    sl.registerLazySingleton<DioHelper>(() => DioHelper());
    ///No Parameter
    sl.registerLazySingleton<NoParameters>(() => const NoParameters());

    /// DATA SOURCE
   sl.registerLazySingleton<BaseDatasource>(() => DataSourceImpl());
    /// Repository
    sl.registerLazySingleton<GetUserBaseRepo>(() => GetUserImplementationRepo(sl()));
    /// Use Cases
    sl.registerLazySingleton(() => GetUserUseCase(sl()));
    /// Bloc
    sl.registerLazySingleton(() => UserCubit(sl()));
  }
}
