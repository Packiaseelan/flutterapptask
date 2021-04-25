import 'package:flutterapp/data/entity/entity.dart';

class UserEntity extends Entity<int> {
  final String name;
  final String avatar;
  final String email;
  final String password;
  final String birthDate;
  final String token;

  UserEntity(
    {int id,
    this.name,
    this.avatar,
    this.email,
    this.password,
    this.birthDate,
    this.token,}) : super(id);

  @override
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'avatar': avatar,
      'email': email,
      'password': password,
      'birthDate': birthDate,
      'token': token,
    };
  }

  @override
  List<Object> get props => [
    id,
    name,
    avatar,
    email,
    password,
    birthDate,
    token,
  ];
}