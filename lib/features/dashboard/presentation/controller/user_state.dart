part of 'user_cubit.dart';

abstract class UserState {}

class UserInitial extends UserState {}
class GetUserLoading extends UserState {}
class GetUserSuccess extends UserState {}
class GetUserError extends UserState {}
