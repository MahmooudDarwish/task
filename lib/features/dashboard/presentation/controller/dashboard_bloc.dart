import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:task/core/utils/enums.dart';
import 'package:task/features/dashboard/presentation/screens/utils/dashboard_strings.dart';
part 'dashboard_event.dart';
part 'dashboard_state.dart';

class DashboardBloc extends Bloc<DashboardEvent, DashboardScreenState> {
  final pageViewController = PageController();

  DashboardBloc() : super(const DashboardScreenState()) {
    on<ChangeBottomNavBarItemEvent>(_changeBottomNavBarItem);
    on<TabBarItemsClickedEvent>(_tabBarItemsClicked);
  }

  FutureOr<void> _changeBottomNavBarItem(
      ChangeBottomNavBarItemEvent event, Emitter<DashboardScreenState> emit) {
    final updatedState = state.copyWith(
        selectedBottomNavBatItem: event.selectedBottomNavBatItem);
    emit(updatedState);
  }

  FutureOr<void> _tabBarItemsClicked(
      TabBarItemsClickedEvent event, Emitter<DashboardScreenState> emit) {
    emit(state.copyWith(selectedTabBarItem: event.tabBarItemType));
  }
}
