import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:task38/repositories/user_repository/abstract_login_repository.dart';

part 'registration_event.dart';
part 'registration_state.dart';
part 'registration_bloc.freezed.dart';

class RegistrationBloc extends Bloc<RegistrationEvent, RegistrationState> {
  final _loginRepository = GetIt.I.get<AbstractUserRepository>();

  RegistrationBloc() : super(const _Initial()) {
    on<RegistrationEvent>(
      (event, emit) async {
        await event.map(
          register: (event) => _onRegister(event, emit),
        );
      },
    );
  }

  _onRegister(
    _Register event,
    Emitter<RegistrationState> emit,
  ) async {
    emit(const RegistrationState.registration());
    try {
      String email = event.email;
      String password = event.password;

      if (email.isEmpty || password.isEmpty) {
        emit(const RegistrationState.failure(
            error: 'Логин или пароль не могут быть пустыми'));
        return;
      }

      if (!RegExp(r'^((?!\.)[\w\-_.]*[^.])(@\w+)(\.\w+(\.\w+)?[^.\W])$')
          .hasMatch(email)) {
        emit(const RegistrationState.failure(error: 'Неверно указана почта'));
        return;
      }

      final isUserExist = await _loginRepository.isUserExist(event.email);

      if (!isUserExist) {
        await _loginRepository.signUp(email, password);
        emit(const RegistrationState.registered());
      } else {
        emit(const RegistrationState.failure(
            error: 'Пользователь с такой почтой уже зарегистрирован'));
      }
    } catch (e) {
      log(e.toString());
      emit(RegistrationState.failure(error: e.toString()));
    }
  }
}
