import 'package:Fapps_crud/models/user.model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirestoreHelper {
  FirestoreHelper._privateConstructor();

  static final FirestoreHelper instance = FirestoreHelper._privateConstructor();

  FirebaseFirestore firestore = FirebaseFirestore.instance;

  Future<UserModel> createUser(UserModel user) {}

  Future<UserModel> getUserById(String id) async {
    CollectionReference users = FirebaseFirestore.instance.collection('users');

    QuerySnapshot user = await users.where('id', isEqualTo: id).get();

    if (user == null) {
      return Future.value(null);
    } 

    Map<String, dynamic> map = user.docs.first.data();

    UserModel userGet = UserModel.fromMap(map);

    return Future.value(userGet);
  }

  Future<User> getUserByEmail(String email) async {
    // CollectionReference users = FirebaseFirestore.instance.collection('users');

    // DocumentSnapshot user = await users.doc(email).get();

    // if (user != null) return Future.value(null);

    // Map<String, dynamic> map = user.data();

    // User userGet = UserModel.fromMap(map);

    // return Future.value(userGet);
  }

  Future<User> getUserByRole(String role) async {
    // CollectionReference users = FirebaseFirestore.instance.collection('users');

    // DocumentSnapshot user = await users.doc(role).get();

    // if (user != null) return Future.value(null);

    // Map<String, dynamic> map = user.data();

    // User userGet = UserModel.fromMap(map);

    // return Future.value(userGet);
  }

  Future<bool> deleteUser(User user) {}

  Future<bool> updateEmail(User user, String newEmail) {}
}
