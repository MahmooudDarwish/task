
import 'package:task/core/error/failure.dart';
import 'package:task/core/network/api_constance.dart';
import 'package:task/core/services/dio_helper.dart';
import 'package:task/core/services/services_locator.dart';
import 'package:task/features/dashboard/data_layer/model.dart';

abstract class BaseDatasource{
  Future<List <UserDataModel>> getUserData();
}

class DataSourceImpl extends BaseDatasource{
  @override
  Future<List <UserDataModel>> getUserData() async{
    var result = await sl<DioHelper>().getData(url: ApiConstance.users);
    if(result.statusCode == 200 ){

      var userList = result.data as List ;
      List<UserDataModel> userData = [];
      for (var element in userList) {
        userData.add(UserDataModel.fromJson(element));

      }
      return userData;
    }
    else{
      throw ServerFailure(result.statusMessage!);

    }
  }

}