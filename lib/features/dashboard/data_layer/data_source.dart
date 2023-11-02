import 'package:task/core/error/failure.dart';
import 'package:task/core/network/api_constance.dart';
import 'package:task/core/services/dio_helper.dart';
import 'package:task/core/services/services_locator.dart';
import 'package:task/features/dashboard/data_layer/model.dart';

abstract class BaseDatasource{
  Future<UserDataModel> getUserData();
}

class DataSourceImpl extends BaseDatasource{
  @override
  Future<UserDataModel> getUserData() async{
    var result = await sl<DioHelper>().getData(url: ApiConstance.users);
    if(result.statusCode == 200 ){
      return UserDataModel.fromJson(result.data);
    }
    else{
      throw ServerFailure(result.statusMessage!);

    }
  }

}