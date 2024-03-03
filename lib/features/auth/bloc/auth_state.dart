part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.authorization() = _Authorization;
  const factory AuthState.failure({required Object error}) = _Failure;
  const factory AuthState.authorized(
      {required User user, required bool isNewUser}) = _Authorized;
}
