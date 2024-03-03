part of 'main_app_user_auth_bloc.dart';

@freezed
class MainAppUserAuthEvent with _$MainAppUserAuthEvent {
  const factory MainAppUserAuthEvent.userSignIn({required User user}) =
      _UserSignIn;
  const factory MainAppUserAuthEvent.userLogOut() = _UserLogOut;
}
