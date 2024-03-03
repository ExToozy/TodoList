import 'dart:async';

import 'package:task38/database/app_database.dart';
import 'package:task38/repositories/models/user.dart';
import 'package:task38/repositories/user_repository/abstract_login_repository.dart';

class UserRepository extends AbstractUserRepository {
  final db = AppDatabaseSingleton.instance;

  @override
  Future<User?> logIn(String email, String password) async {
    final userResultFromDB = await db.getUserOrNull(email, password);
    if (userResultFromDB != null) {
      final user = User(
          id: userResultFromDB.id,
          email: userResultFromDB.email,
          password: userResultFromDB.password);
      return user;
    }
    return null;
  }

  @override
  Future<bool> isUserExist(String email) async {
    final isUserContainInDB = await db.isUserContainsInDB(email);

    if (isUserContainInDB == null) {
      return false;
    } else {
      return true;
    }
  }

  @override
  Future<void> signUp(String email, String password) async {
    await db.createUser(email, password);
  }
}
