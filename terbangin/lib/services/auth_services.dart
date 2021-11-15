// ignore: unused_import
import 'package:firebase_auth/firebase_auth.dart';
import 'package:terbangin/models/user_model.dart';
import 'package:terbangin/services/user_services.dart';

class AuthServices {
  // ignore: prefer_final_fields
  FirebaseAuth _auth = FirebaseAuth.instance;

  Future<UserModel> signUp({
    required String password,
    required String email,
    required String name,
    String hobi = '',
  }) async {
    try {
      UserCredential userCredential = await _auth
          .createUserWithEmailAndPassword(email: email, password: password);

      UserModel user = UserModel(
          id: userCredential.user!.uid,
          email: email,
          name: name,
          hobi: hobi,
          balance: 2800000);
      await UserServices().setUser(user);
      return user;
    } catch (e) {
      rethrow;
    }
  }
}
