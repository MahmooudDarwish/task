import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/features/home/presentation/components/default_id_text.dart';
import 'package:task/features/home/presentation/components/default_list_tile.dart';
import 'package:task/features/home/presentation/controller/home_bloc.dart';

class UsersListView extends StatelessWidget {
  const UsersListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeScreenState>(builder: (context, state) {
      return Expanded(
        child: ListView.builder(
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return defaultListTile(
                title: state.userList[index].name,
                leadingWidget: getUserIdWidget(id: state.userList[index].id));
          },
          itemCount: state.userList.length,
        ),
      );
    });
  }
}
