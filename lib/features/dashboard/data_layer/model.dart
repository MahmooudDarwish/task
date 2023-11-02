import 'package:task/features/dashboard/domain_layer/entity.dart';

class UserDataModel extends UserDataEntity {
  const UserDataModel(
      {required super.id,
      required super.name,
});

  factory UserDataModel.fromJson(Map<String, dynamic> json) => UserDataModel(
      id: json['id'],
      name: json['name'],

  );
}
