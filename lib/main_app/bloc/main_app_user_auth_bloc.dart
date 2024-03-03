import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:task38/repositories/models/user.dart';

part 'main_app_user_auth_event.dart';
part 'main_app_user_auth_state.dart';
part 'main_app_user_auth_bloc.freezed.dart';

class MainAppUserAuthBloc
    extends Bloc<MainAppUserAuthEvent, MainAppUserAuthState> {
  MainAppUserAuthBloc() : super(const _Initial()) {
    on<MainAppUserAuthEvent>((event, emit) {
      event.map(
          userSignIn: (event) => _onUserSignIn(event, emit),
          userLogOut: (event) => _onUserLogOut(event, emit));
    });
  }

  FutureOr<void> _onUserSignIn(
    _UserSignIn event,
    Emitter<MainAppUserAuthState> emit,
  ) {
    emit(MainAppUserAuthState.userAuthorized(user: event.user));
  }

  FutureOr<void> _onUserLogOut(
    _UserLogOut event,
    Emitter<MainAppUserAuthState> emit,
  ) {
    emit(const MainAppUserAuthState.userUnauthorized());
  }
}
