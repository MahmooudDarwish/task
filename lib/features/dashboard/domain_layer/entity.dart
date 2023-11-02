import 'package:equatable/equatable.dart';

class UserDataEntity extends Equatable {
  final int id;
  final String name;


  const UserDataEntity(
      {required this.id,
      required this.name,
});


  @override
  List<Object?> get props => [
        id,
        name,

      ];
}
