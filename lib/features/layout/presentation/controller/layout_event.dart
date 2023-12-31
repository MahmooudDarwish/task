part of 'layout_bloc.dart';

@immutable
abstract class LayoutEvent extends Equatable {
  const LayoutEvent();
}

class ChangeBottomNavBarItemEvent extends LayoutEvent {
  final int selectedBottomNavBatItem;
  const ChangeBottomNavBarItemEvent({required this.selectedBottomNavBatItem});
  @override

  List<Object?> get props => [selectedBottomNavBatItem];
}
