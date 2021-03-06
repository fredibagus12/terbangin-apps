import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
// ignore: unused_import
import 'package:flutter/material.dart';
import 'package:terbangin/models/user_model.dart';
import 'package:terbangin/services/auth_services.dart';
import 'package:terbangin/services/user_services.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  void signIn({
    required String email,
    required String password,
  }) async {
    try {
      emit(AuthLoading());

      UserModel user = await AuthServices().signIn(
        password: password,
        email: email,
      );

      emit(AuthSuccess(user));
    } catch (e) {
      emit(AuthFailed(e.toString()));
    }
  }

  void signUp(
      {required String email,
      required String password,
      required String name,
      String hobi = ''}) async {
    try {
      emit(AuthLoading());

      UserModel user = await AuthServices()
          .signUp(password: password, email: email, name: name, hobi: hobi);

      emit(AuthSuccess(user));
    } catch (e) {
      emit(AuthFailed(e.toString()));
    }
  }

  void signOut() async {
    try {
      emit(AuthLoading());
      await AuthServices().signOut();
      emit(AuthInitial());
    } catch (e) {
      emit(AuthFailed(e.toString()));
    }
  }

  void getCurrentUser(String id) async {
    try {
      UserModel user = await UserServices().getUserById(id);
      emit(AuthSuccess(user));
    } catch (e) {
      emit(AuthFailed(e.toString()));
    }
  }
}
