part of 'dashboard_bloc.dart';

@immutable
abstract class DashboardEvent extends Equatable {
  const DashboardEvent();
}

class ChangeBottomNavBarItem extends DashboardEvent {
  final int selectedBottomNavBatItem;
  const ChangeBottomNavBarItem({required this.selectedBottomNavBatItem});
  @override
  // TODO: implement props
  List<Object?> get props => [selectedBottomNavBatItem];
}
