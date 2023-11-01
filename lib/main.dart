import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:task/core/global/theme/light/light_theme_data.dart';
import 'package:task/core/services/dio_helper.dart';
import 'package:task/core/services/services_locator.dart';

void main() {
  ServicesLocator().init();
  sl<DioHelper>().init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: sl<GoRouter>(),
      theme: getThemeDataLight(),
    );
  }
}
