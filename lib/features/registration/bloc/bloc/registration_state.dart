part of 'registration_bloc.dart';

@freezed
class RegistrationState with _$RegistrationState {
  const factory RegistrationState.initial() = _Initial;

  const factory RegistrationState.registration() = _Registration;

  const factory RegistrationState.failure({
    required Object error,
  }) = _Failure;

  const factory RegistrationState.registered() = _Registered;
}
