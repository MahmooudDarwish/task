import 'package:dartz/dartz.dart';
import 'package:task/core/error/failure.dart';
import 'package:task/features/dashboard/domain_layer/entity.dart';

abstract class GetUserBaseRepo{
  Future<Either<ServerFailure , List<UserDataEntity>>> getUserData();
}