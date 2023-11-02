import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'dashboard_event.dart';
part 'dashboard_state.dart';

class DashboardBloc extends Bloc<DashboardEvent, DashboardScreenState> {
  DashboardBloc() : super(const DashboardScreenState()) {
    on<ChangeBottomNavBarItem>(_changeBottomNavBarItem);
  }

  FutureOr<void> _changeBottomNavBarItem(
      ChangeBottomNavBarItem event, Emitter<DashboardScreenState> emit) {
    final updatedState = state.copyWith(
        selectedBottomNavBatItem: event.selectedBottomNavBatItem);
    emit(updatedState);
  }
}
