import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:task38/repositories/models/user.dart';
import 'package:task38/repositories/user_repository/abstract_login_repository.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AbstractUserRepository _abstractUserRepository;
  AuthBloc(this._abstractUserRepository) : super(const _Initial()) {
    on<AuthEvent>((event, emit) async {
      await event.map(
        signIn: (event) => _onSignInMain(event, emit),
      );
    });
  }

  FutureOr<void> _onSignInMain(
    _SignInWithMain event,
    Emitter<AuthState> emit,
  ) async {
    try {
      emit(const AuthState.authorization());

      String email = event.email;
      String password = event.password;

      if (email.isEmpty || password.isEmpty) {
        emit(const AuthState.failure(
            error: 'Логин или пароль не могут быть пустыми'));
        return;
      }

      if (!RegExp(r'^((?!\.)[\w\-_.]*[^.])(@\w+)(\.\w+(\.\w+)?[^.\W])$')
          .hasMatch(email)) {
        emit(const AuthState.failure(error: 'Неверно указана почта'));
        return;
      }

      User? user = await _abstractUserRepository.logIn(email, password);

      if (user == null) {
        emit(const AuthState.failure(error: 'Пользователь не найден'));
      } else {
        const storage = FlutterSecureStorage();

        bool isNewUser = true;
        String? isUserAlreadyLoggedIn = await storage.read(key: user.email);
        if (isUserAlreadyLoggedIn == null) {
          await storage.write(key: user.email, value: 'first-time user');
          isNewUser = true;
        } else {
          await storage.write(
              key: user.email, value: 'user has logged in firstly');
          isNewUser = false;
        }

        emit(
          AuthState.authorized(
            user: user,
            isNewUser: isNewUser,
          ),
        );
      }
    } catch (e) {
      emit(AuthState.failure(error: e.toString()));
    }
  }
}
