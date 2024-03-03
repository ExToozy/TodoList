import 'dart:async';

import 'package:task38/repositories/models/user.dart';

abstract class AbstractUserRepository {
  Future<void> signUp(String email, String password);
  Future<User?> logIn(String email, String password);
  Future<bool> isUserExist(String email);
}
