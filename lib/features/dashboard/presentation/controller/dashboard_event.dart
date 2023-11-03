part of 'dashboard_bloc.dart';

@immutable
abstract class DashboardEvent extends Equatable {
  const DashboardEvent();
}

class ChangeBottomNavBarItemEvent extends DashboardEvent {
  final int selectedBottomNavBatItem;
  const ChangeBottomNavBarItemEvent({required this.selectedBottomNavBatItem});
  @override
  // TODO: implement props
  List<Object?> get props => [selectedBottomNavBatItem];
}

class TabBarItemsClickedEvent extends DashboardEvent {
  final TabBarItemType tabBarItemType;
  const TabBarItemsClickedEvent({required this.tabBarItemType});
  @override
  // TODO: implement props
  List<Object?> get props => [tabBarItemType];
}
