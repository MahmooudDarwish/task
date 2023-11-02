import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/core/services/services_locator.dart';
import 'package:task/features/dashboard/presentation/controller/user_cubit.dart';
import 'package:task/features/dashboard/presentation/screens/utils/dashboard_strings.dart';

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      lazy: false,
      create: (context) => sl<UserCubit>()..getUserData(),
      child: Scaffold(
        drawer: const Drawer(backgroundColor: Colors.black,),
        appBar: AppBar(
          title: const Text(DashBoardString.appBarHeader),
        ),
      ),
    );
  }
}
