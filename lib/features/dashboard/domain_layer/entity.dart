import 'package:equatable/equatable.dart';

class UserDataEntity extends Equatable {
  final int id;
  final String name;
  final String username;
  final String email;
  final String street;
  final String suite;
  final String city;
  final String zipcode;
  final String lat;
  final String lng;
  final String phone;
  final String companyName;
  final String catchPhrase;
  final String bs;

  const UserDataEntity(
      {required this.id,
      required this.name,
      required this.username,
      required this.email,
      required this.street,
      required this.suite,
      required this.city,
      required this.zipcode,
      required this.lat,
      required this.lng,
      required this.phone,
      required this.companyName,
      required this.catchPhrase,
      required this.bs});


  @override
  List<Object?> get props => [
        id,
        name,
        username,
        email,
        street,
        suite,
        city,
        zipcode,
        lat,
        lng,
        phone,
        companyName,
        catchPhrase,
        bs,
      ];
}
