// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_app_user_auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MainAppUserAuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) userSignIn,
    required TResult Function() userLogOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User user)? userSignIn,
    TResult? Function()? userLogOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? userSignIn,
    TResult Function()? userLogOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserSignIn value) userSignIn,
    required TResult Function(_UserLogOut value) userLogOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserSignIn value)? userSignIn,
    TResult? Function(_UserLogOut value)? userLogOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserSignIn value)? userSignIn,
    TResult Function(_UserLogOut value)? userLogOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainAppUserAuthEventCopyWith<$Res> {
  factory $MainAppUserAuthEventCopyWith(MainAppUserAuthEvent value,
          $Res Function(MainAppUserAuthEvent) then) =
      _$MainAppUserAuthEventCopyWithImpl<$Res, MainAppUserAuthEvent>;
}

/// @nodoc
class _$MainAppUserAuthEventCopyWithImpl<$Res,
        $Val extends MainAppUserAuthEvent>
    implements $MainAppUserAuthEventCopyWith<$Res> {
  _$MainAppUserAuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UserSignInImplCopyWith<$Res> {
  factory _$$UserSignInImplCopyWith(
          _$UserSignInImpl value, $Res Function(_$UserSignInImpl) then) =
      __$$UserSignInImplCopyWithImpl<$Res>;
  @useResult
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$UserSignInImplCopyWithImpl<$Res>
    extends _$MainAppUserAuthEventCopyWithImpl<$Res, _$UserSignInImpl>
    implements _$$UserSignInImplCopyWith<$Res> {
  __$$UserSignInImplCopyWithImpl(
      _$UserSignInImpl _value, $Res Function(_$UserSignInImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$UserSignInImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$UserSignInImpl implements _UserSignIn {
  const _$UserSignInImpl({required this.user});

  @override
  final User user;

  @override
  String toString() {
    return 'MainAppUserAuthEvent.userSignIn(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserSignInImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserSignInImplCopyWith<_$UserSignInImpl> get copyWith =>
      __$$UserSignInImplCopyWithImpl<_$UserSignInImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) userSignIn,
    required TResult Function() userLogOut,
  }) {
    return userSignIn(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User user)? userSignIn,
    TResult? Function()? userLogOut,
  }) {
    return userSignIn?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? userSignIn,
    TResult Function()? userLogOut,
    required TResult orElse(),
  }) {
    if (userSignIn != null) {
      return userSignIn(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserSignIn value) userSignIn,
    required TResult Function(_UserLogOut value) userLogOut,
  }) {
    return userSignIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserSignIn value)? userSignIn,
    TResult? Function(_UserLogOut value)? userLogOut,
  }) {
    return userSignIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserSignIn value)? userSignIn,
    TResult Function(_UserLogOut value)? userLogOut,
    required TResult orElse(),
  }) {
    if (userSignIn != null) {
      return userSignIn(this);
    }
    return orElse();
  }
}

abstract class _UserSignIn implements MainAppUserAuthEvent {
  const factory _UserSignIn({required final User user}) = _$UserSignInImpl;

  User get user;
  @JsonKey(ignore: true)
  _$$UserSignInImplCopyWith<_$UserSignInImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserLogOutImplCopyWith<$Res> {
  factory _$$UserLogOutImplCopyWith(
          _$UserLogOutImpl value, $Res Function(_$UserLogOutImpl) then) =
      __$$UserLogOutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserLogOutImplCopyWithImpl<$Res>
    extends _$MainAppUserAuthEventCopyWithImpl<$Res, _$UserLogOutImpl>
    implements _$$UserLogOutImplCopyWith<$Res> {
  __$$UserLogOutImplCopyWithImpl(
      _$UserLogOutImpl _value, $Res Function(_$UserLogOutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UserLogOutImpl implements _UserLogOut {
  const _$UserLogOutImpl();

  @override
  String toString() {
    return 'MainAppUserAuthEvent.userLogOut()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserLogOutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) userSignIn,
    required TResult Function() userLogOut,
  }) {
    return userLogOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User user)? userSignIn,
    TResult? Function()? userLogOut,
  }) {
    return userLogOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? userSignIn,
    TResult Function()? userLogOut,
    required TResult orElse(),
  }) {
    if (userLogOut != null) {
      return userLogOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserSignIn value) userSignIn,
    required TResult Function(_UserLogOut value) userLogOut,
  }) {
    return userLogOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserSignIn value)? userSignIn,
    TResult? Function(_UserLogOut value)? userLogOut,
  }) {
    return userLogOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserSignIn value)? userSignIn,
    TResult Function(_UserLogOut value)? userLogOut,
    required TResult orElse(),
  }) {
    if (userLogOut != null) {
      return userLogOut(this);
    }
    return orElse();
  }
}

abstract class _UserLogOut implements MainAppUserAuthEvent {
  const factory _UserLogOut() = _$UserLogOutImpl;
}

/// @nodoc
mixin _$MainAppUserAuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(User user) userAuthorized,
    required TResult Function() userUnauthorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(User user)? userAuthorized,
    TResult? Function()? userUnauthorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(User user)? userAuthorized,
    TResult Function()? userUnauthorized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_userAuthorized value) userAuthorized,
    required TResult Function(_userUnauthorized value) userUnauthorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_userAuthorized value)? userAuthorized,
    TResult? Function(_userUnauthorized value)? userUnauthorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_userAuthorized value)? userAuthorized,
    TResult Function(_userUnauthorized value)? userUnauthorized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainAppUserAuthStateCopyWith<$Res> {
  factory $MainAppUserAuthStateCopyWith(MainAppUserAuthState value,
          $Res Function(MainAppUserAuthState) then) =
      _$MainAppUserAuthStateCopyWithImpl<$Res, MainAppUserAuthState>;
}

/// @nodoc
class _$MainAppUserAuthStateCopyWithImpl<$Res,
        $Val extends MainAppUserAuthState>
    implements $MainAppUserAuthStateCopyWith<$Res> {
  _$MainAppUserAuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$MainAppUserAuthStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl extends _Initial {
  const _$InitialImpl() : super._();

  @override
  String toString() {
    return 'MainAppUserAuthState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(User user) userAuthorized,
    required TResult Function() userUnauthorized,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(User user)? userAuthorized,
    TResult? Function()? userUnauthorized,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(User user)? userAuthorized,
    TResult Function()? userUnauthorized,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_userAuthorized value) userAuthorized,
    required TResult Function(_userUnauthorized value) userUnauthorized,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_userAuthorized value)? userAuthorized,
    TResult? Function(_userUnauthorized value)? userUnauthorized,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_userAuthorized value)? userAuthorized,
    TResult Function(_userUnauthorized value)? userUnauthorized,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial extends MainAppUserAuthState {
  const factory _Initial() = _$InitialImpl;
  const _Initial._() : super._();
}

/// @nodoc
abstract class _$$userAuthorizedImplCopyWith<$Res> {
  factory _$$userAuthorizedImplCopyWith(_$userAuthorizedImpl value,
          $Res Function(_$userAuthorizedImpl) then) =
      __$$userAuthorizedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$userAuthorizedImplCopyWithImpl<$Res>
    extends _$MainAppUserAuthStateCopyWithImpl<$Res, _$userAuthorizedImpl>
    implements _$$userAuthorizedImplCopyWith<$Res> {
  __$$userAuthorizedImplCopyWithImpl(
      _$userAuthorizedImpl _value, $Res Function(_$userAuthorizedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$userAuthorizedImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$userAuthorizedImpl extends _userAuthorized {
  const _$userAuthorizedImpl({required this.user}) : super._();

  @override
  final User user;

  @override
  String toString() {
    return 'MainAppUserAuthState.userAuthorized(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$userAuthorizedImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$userAuthorizedImplCopyWith<_$userAuthorizedImpl> get copyWith =>
      __$$userAuthorizedImplCopyWithImpl<_$userAuthorizedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(User user) userAuthorized,
    required TResult Function() userUnauthorized,
  }) {
    return userAuthorized(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(User user)? userAuthorized,
    TResult? Function()? userUnauthorized,
  }) {
    return userAuthorized?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(User user)? userAuthorized,
    TResult Function()? userUnauthorized,
    required TResult orElse(),
  }) {
    if (userAuthorized != null) {
      return userAuthorized(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_userAuthorized value) userAuthorized,
    required TResult Function(_userUnauthorized value) userUnauthorized,
  }) {
    return userAuthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_userAuthorized value)? userAuthorized,
    TResult? Function(_userUnauthorized value)? userUnauthorized,
  }) {
    return userAuthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_userAuthorized value)? userAuthorized,
    TResult Function(_userUnauthorized value)? userUnauthorized,
    required TResult orElse(),
  }) {
    if (userAuthorized != null) {
      return userAuthorized(this);
    }
    return orElse();
  }
}

abstract class _userAuthorized extends MainAppUserAuthState {
  const factory _userAuthorized({required final User user}) =
      _$userAuthorizedImpl;
  const _userAuthorized._() : super._();

  User get user;
  @JsonKey(ignore: true)
  _$$userAuthorizedImplCopyWith<_$userAuthorizedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$userUnauthorizedImplCopyWith<$Res> {
  factory _$$userUnauthorizedImplCopyWith(_$userUnauthorizedImpl value,
          $Res Function(_$userUnauthorizedImpl) then) =
      __$$userUnauthorizedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$userUnauthorizedImplCopyWithImpl<$Res>
    extends _$MainAppUserAuthStateCopyWithImpl<$Res, _$userUnauthorizedImpl>
    implements _$$userUnauthorizedImplCopyWith<$Res> {
  __$$userUnauthorizedImplCopyWithImpl(_$userUnauthorizedImpl _value,
      $Res Function(_$userUnauthorizedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$userUnauthorizedImpl extends _userUnauthorized {
  const _$userUnauthorizedImpl() : super._();

  @override
  String toString() {
    return 'MainAppUserAuthState.userUnauthorized()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$userUnauthorizedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(User user) userAuthorized,
    required TResult Function() userUnauthorized,
  }) {
    return userUnauthorized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(User user)? userAuthorized,
    TResult? Function()? userUnauthorized,
  }) {
    return userUnauthorized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(User user)? userAuthorized,
    TResult Function()? userUnauthorized,
    required TResult orElse(),
  }) {
    if (userUnauthorized != null) {
      return userUnauthorized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_userAuthorized value) userAuthorized,
    required TResult Function(_userUnauthorized value) userUnauthorized,
  }) {
    return userUnauthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_userAuthorized value)? userAuthorized,
    TResult? Function(_userUnauthorized value)? userUnauthorized,
  }) {
    return userUnauthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_userAuthorized value)? userAuthorized,
    TResult Function(_userUnauthorized value)? userUnauthorized,
    required TResult orElse(),
  }) {
    if (userUnauthorized != null) {
      return userUnauthorized(this);
    }
    return orElse();
  }
}

abstract class _userUnauthorized extends MainAppUserAuthState {
  const factory _userUnauthorized() = _$userUnauthorizedImpl;
  const _userUnauthorized._() : super._();
}
