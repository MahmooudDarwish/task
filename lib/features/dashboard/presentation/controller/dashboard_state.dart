part of 'dashboard_bloc.dart';

class DashboardScreenState extends Equatable {
  final int selectedBottomNavBatItem;
  const DashboardScreenState({this.selectedBottomNavBatItem = 0});

  DashboardScreenState copyWith({int? selectedBottomNavBatItem}) {
    return DashboardScreenState(
      selectedBottomNavBatItem:
          selectedBottomNavBatItem ?? this.selectedBottomNavBatItem,
    );
  }

  @override
  // TODO: implement props
  List<Object?> get props => [selectedBottomNavBatItem];
}
