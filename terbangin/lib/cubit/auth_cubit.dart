import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
// ignore: unused_import
import 'package:flutter/material.dart';
import 'package:terbangin/models/user_model.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());
}
