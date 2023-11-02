import 'package:task/features/dashboard/domain_layer/entity.dart';

class UserDataModel extends UserDataEntity {
  const UserDataModel(
      {required super.id,
      required super.name,
      required super.username,
      required super.email,
      required super.street,
      required super.suite,
      required super.city,
      required super.zipcode,
      required super.lat,
      required super.lng,
      required super.phone,
      required super.companyName,
      required super.catchPhrase,
      required super.bs});

  factory UserDataModel.fromJson(Map<String, dynamic> json) => UserDataModel(
      id: json['id'],
      name: json['name'],
      username: json['username'],
      email: json['email'],
      street: json['address']['street'],
      suite: json['address']['suite'],
      city: json['address']['city'],
      zipcode: json['address']['zipcode'],
      lat: json['address']['geo']['lat'],
      lng: json['address']['geo']['lng'],
      phone: json['phone'],
      companyName: json['company']['name'],
      catchPhrase: json['catchPhrase'],
      bs: json['company']['bs']
  );
}
