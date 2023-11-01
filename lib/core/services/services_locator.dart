import 'package:any_deck/core/services/dio_helper.dart';
import 'package:any_deck/core/utils/app_constance.dart';
import 'package:any_deck/features/admin_dashboard/data/datasource/add_layout_remote_data_source.dart';
import 'package:any_deck/features/admin_dashboard/data/datasource/get_all_layout_remote_data_source.dart';
import 'package:any_deck/features/admin_dashboard/data/repositery/add_layout_repositery.dart';
import 'package:any_deck/features/admin_dashboard/data/repositery/get_all_layout_repositery.dart';
import 'package:any_deck/features/admin_dashboard/domain/repositery/base_add_layout_repositery.dart';
import 'package:any_deck/features/admin_dashboard/domain/repositery/base_get_all_layouts_repositery.dart';
import 'package:any_deck/features/admin_dashboard/domain/usecases/add_layout_usecase.dart';
import 'package:any_deck/features/admin_dashboard/domain/usecases/get_all_layouts_usecase.dart';
import 'package:any_deck/features/admin_dashboard/presentation/controller/admin_dashboard_bloc.dart';
import 'package:any_deck/features/auth/login/data/datasource/login_remote_data_source.dart';
import 'package:any_deck/features/auth/login/data/repo/login_repo.dart';
import 'package:any_deck/features/auth/login/domain/repo/base_login_repo.dart';
import 'package:any_deck/features/auth/login/domain/usecases/user_login_usecase.dart';
import 'package:any_deck/features/auth/login/presentation/controller/login_bloc.dart';
import 'package:any_deck/features/auth/register/data/datasource/register_remote_datasource.dart';
import 'package:any_deck/features/auth/register/data/repositery/register_repostory.dart';
import 'package:any_deck/features/auth/register/domain/repositery/base_register_repo.dart';
import 'package:any_deck/features/auth/register/domain/usecases/register_user_usecase.dart';
import 'package:any_deck/features/auth/register/presentation/controller/register_bloc.dart';
import 'package:any_deck/features/user_dashboard/presentation/controller/userdashboard_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

final sl = GetIt.instance;

class ServicesLocator {
  void init() {
    ///Go router
    sl.registerLazySingleton<GoRouter>(
        () => GoRouter(routes: AppConstance.routes));

    ///Dio helper
    sl.registerLazySingleton<DioHelper>(() => DioHelper());

    /// DATA SOURCE
    sl.registerLazySingleton<BaseLoginRemoteDataSource>(
        () => LoginRemoteDataSource());
    sl.registerLazySingleton<BaseRegisterRemoteDataSource>(
        () => RegisterRemoteDataSource());
    sl.registerLazySingleton<BaseAddLayoutRemoteDataSource>(
        () => AddLayoutRemoteDataSource());
    sl.registerLazySingleton<BaseGetAllLayoutRemoteDataSource>(
        () => GetAllLayoutRemoteDataSource());

    /// Repository
    sl.registerLazySingleton<BaseLoginRepository>(() => LoginRepo(sl()));
    sl.registerLazySingleton<BaseRegisterRepository>(
        () => RegisterRepository(sl()));
    sl.registerLazySingleton<BaseAddLayoutRepository>(
        () => AddLayoutRepository(sl()));
    sl.registerLazySingleton<BaseGetAllLayoutRepository>(
        () => GetAllLayoutRepository(sl()));

    /// Use Cases
    sl.registerLazySingleton<UserLoginUseCase>(() => UserLoginUseCase(sl()));
    sl.registerLazySingleton<UserRegisterUseCase>(
        () => UserRegisterUseCase(sl()));
    sl.registerLazySingleton<AddLayoutUseCase>(() => AddLayoutUseCase(sl()));
    sl.registerLazySingleton<GetAllLayoutUseCase>(
        () => GetAllLayoutUseCase(sl()));

    /// Bloc
    sl.registerLazySingleton<AdminDashboardBloc>(
        () => AdminDashboardBloc(sl(), sl()));
    sl.registerLazySingleton<UserDashboardBloc>(() => UserDashboardBloc());
    sl.registerLazySingleton<LoginBloc>(() => LoginBloc(sl()));
    sl.registerLazySingleton<RegisterBloc>(() => RegisterBloc(sl()));
  }
}
