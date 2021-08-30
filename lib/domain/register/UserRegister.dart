import 'package:freezed_annotation/freezed_annotation.dart';

class UserRegister {
  String name;
  String phone;
  String email;
  String password;
  UserRegister({
    required this.name,
    required this.phone,
    required this.email,
    required this.password,
  });
}
