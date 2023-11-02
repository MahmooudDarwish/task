import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/core/usecase/base_usecase.dart';
import 'package:task/features/dashboard/domain_layer/entity.dart';
import 'package:task/features/dashboard/domain_layer/use_case.dart';

part 'user_state.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit(this.getUserUseCase) : super(UserInitial());
  final GetUserUseCase getUserUseCase;

  List<UserDataEntity>?  userDataEntity;


  Future<void>  getUserData()async {
    emit(GetUserLoading());
    var result = await getUserUseCase.call(const NoParameters());

    result.fold(
            (error) {
              log(error.message);
              emit(GetUserError());
              },
            (userDataEntity) {
              this.userDataEntity=userDataEntity;
              printData();
              emit(GetUserSuccess());
            });

  }
  printData(){
    log(userDataEntity.toString());
  }
}
