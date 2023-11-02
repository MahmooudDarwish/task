part of 'dashboard_bloc.dart';

class DashboardScreenState extends Equatable {
  final int selectedBottomNavBatItem;
  final TabBarItemType selectedTabBarItem;
  const DashboardScreenState(
      {this.selectedBottomNavBatItem = 0,
      this.selectedTabBarItem = TabBarItemType.categories});

  DashboardScreenState copyWith(
      {int? selectedBottomNavBatItem, TabBarItemType? selectedTabBarItem}) {
    return DashboardScreenState(
        selectedBottomNavBatItem:
            selectedBottomNavBatItem ?? this.selectedBottomNavBatItem,
        selectedTabBarItem: selectedTabBarItem ?? this.selectedTabBarItem);
  }

  @override
  // TODO: implement props
  List<Object?> get props => [selectedBottomNavBatItem, selectedTabBarItem];
}
