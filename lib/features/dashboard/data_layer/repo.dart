import 'package:dartz/dartz.dart';
import 'package:task/core/error/failure.dart';
import 'package:task/features/dashboard/data_layer/data_source.dart';
import 'package:task/features/dashboard/domain_layer/entity.dart';
import 'package:task/features/dashboard/domain_layer/repo.dart';

class GetUserImplementationRepo extends GetUserBaseRepo{
  GetUserImplementationRepo(this.baseDatasource);

  BaseDatasource baseDatasource;

  @override
  Future<Either<ServerFailure, List<UserDataEntity>>> getUserData() async{
     var result = await baseDatasource.getUserData();

     try{
       return right(result);
     }catch (error){
       return left(result as ServerFailure);
     }
  }

}