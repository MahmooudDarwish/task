import 'package:dartz/dartz.dart';
import 'package:task/core/error/failure.dart';
import 'package:task/core/usecase/base_usecase.dart';
import 'package:task/features/dashboard/domain_layer/entity.dart';
import 'package:task/features/dashboard/domain_layer/repo.dart';

class GetUserUseCase extends BaseUseCase<List<UserDataEntity>, NoParameters>{
  GetUserUseCase(this.getUserBaseRepo);
  GetUserBaseRepo getUserBaseRepo;



  @override
  Future<Either<Failure, List<UserDataEntity>>> call(NoParameters parameters) async{
    return await getUserBaseRepo.getUserData();
  }

}