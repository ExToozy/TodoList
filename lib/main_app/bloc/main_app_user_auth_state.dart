part of 'main_app_user_auth_bloc.dart';

@freezed
class MainAppUserAuthState with _$MainAppUserAuthState {
  const MainAppUserAuthState._();

  const factory MainAppUserAuthState.initial() = _Initial;
  const factory MainAppUserAuthState.userAuthorized({required User user}) =
      _userAuthorized;
  const factory MainAppUserAuthState.userUnauthorized() = _userUnauthorized;

  User? get user => maybeMap(
        userAuthorized: (e) => e.user,
        orElse: () => null,
      );
}
