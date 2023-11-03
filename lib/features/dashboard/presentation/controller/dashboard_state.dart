part of 'dashboard_bloc.dart';

class DashboardScreenState extends Equatable {
  final int selectedBottomNavBatItem;
  final TabBarItemType selectedTabBarItem;
  final List<String> serviceList;
  final List<String> ordersList;
  final List<String> categoryList;

  const DashboardScreenState(
      {this.selectedBottomNavBatItem = 0,
      this.selectedTabBarItem = TabBarItemType.categories,
      this.ordersList = const [],
      this.serviceList = const [],
      this.categoryList = const [
        DashboardString.constructions,
        DashboardString.insurances,
        DashboardString.legal,
        DashboardString.buyAndSell,
        DashboardString.accountingServices
      ]});

  DashboardScreenState copyWith(
      {int? selectedBottomNavBatItem,
      TabBarItemType? selectedTabBarItem,
      List<String>? serviceList,
      List<String>? ordersList,
      List<String>? categoryList}) {
    return DashboardScreenState(
        selectedBottomNavBatItem:
            selectedBottomNavBatItem ?? this.selectedBottomNavBatItem,
        selectedTabBarItem: selectedTabBarItem ?? this.selectedTabBarItem,
        ordersList: ordersList ?? this.ordersList,
        serviceList: serviceList ?? this.serviceList,
        categoryList: categoryList ?? this.categoryList);
  }

  @override
  // TODO: implement props
  List<Object?> get props => [
        selectedBottomNavBatItem,
        selectedTabBarItem,
        serviceList,
        ordersList,
        categoryList
      ];
}
