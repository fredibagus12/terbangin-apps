import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:terbangin/models/user_model.dart';

class UserServices {
  // ignore: prefer_final_fields, unused_field
  CollectionReference _userReference =
      FirebaseFirestore.instance.collection('users');

  Future<void> setUser(UserModel user) async {
    try {
      _userReference.doc(user.id).set({
        'email': user.email,
        'name': user.name,
        'hobi': user.hobi,
        'balance': user.balance,
      });
    } catch (e) {
      rethrow;
    }
  }

  Future<UserModel> getUserById(String id) async {
    try {
      DocumentSnapshot snapshot = await _userReference.doc(id).get();
      return UserModel(
        id: id,
        email: snapshot['email'],
        name: snapshot['name'],
        hobi: snapshot['hobi'],
        balance: snapshot['balance'],
      );
    } catch (e) {
      rethrow;
    }
  }
}
