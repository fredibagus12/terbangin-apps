import 'package:equatable/equatable.dart';

class UserModel extends Equatable {
  final String id;
  final String email;
  final String name;
  final String hobi;
  final int balance;

  // ignore: prefer_const_constructors_in_immutables
  UserModel({
    required this.id,
    required this.email,
    this.name = '',
    this.hobi = '',
    this.balance = 0,
  });

  // ignore: empty_constructor_bodies
  @override
  List<Object?> get props => [id, email, name, hobi, balance];
}
